import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import 'package:asl/c_domain/auth/auth_failure.dart';
import 'package:asl/c_domain/auth/i_auth_facade.dart';
import 'package:asl/c_domain/auth/value_objects.dart';

part 'sign_in_form_bloc.freezed.dart';
part 'sign_in_form_event.dart';
part 'sign_in_form_state.dart';

@injectable
class SignInFormBloc extends Bloc<SignInFormEvent, SignInFormState> {
  // implementing the business logic
  final IAuthFacade _authFacade;

  SignInFormBloc(
    this._authFacade,
  ) : super(SignInFormState.initial()) {
    on<SignInFormEvent>(mapSignInFromEventToState);
  }

  Future<void> mapSignInFromEventToState(
    SignInFormEvent event,
    Emitter<SignInFormState> emit,
  ) async {
    await event.map(
      emailChanged: (e) async {
        emit(state.copyWith(
            emailAddress: EmailAddress(e.emailStr),

            // to remove the previous response no longer applies
            authFailureOrSuccessOption: none()));
      },

      passwordChanged: (e) async {
        emit(state.copyWith(
            password: Password(e.passwordStr),
            authFailureOrSuccessOption: none()));
      },

      registerWithEmailAndPasswordPressed: (e) async {
        await _performActionFacadeWithEmailAndPassword(
                _authFacade.registerWithEmailAndPassword)
            .then((state) => emit(state));
      },

      signInWithEmailAndPasswordPressed: (e) async {
        await _performActionFacadeWithEmailAndPassword(
                _authFacade.signInWithEmailAndPassword)
            .then((state) => emit(state));
      },

      // 3. with google
      signInWithEmailGooglePressed: (e) async {
        // 1. indicating the state of form is submitted
        emit(state.copyWith(
          isSubmitting: true,
          // to remove the previous response no longer applies
          authFailureOrSuccessOption: none(),
        ));
        // 2.  then directe it to the logic in the domain layer (IAuthFacade)
        final failureOrSuccess = await _authFacade.signInWithGoogle();

        // 3. yield the state of done submitting with response
        emit(state.copyWith(
          isSubmitting: false,
          authFailureOrSuccessOption: some(failureOrSuccess),
        ));
      },

      reLogin: (e) async {
        emit(state.copyWith(
            isSubmitting: false, authFailureOrSuccessOption: none()));
      },
    );
  }

  Future<SignInFormState> _performActionFacadeWithEmailAndPassword(
    Future<Either<AuthFailure, Unit>> Function(
            {required EmailAddress emailAddress, required Password password})
        forwardedCall,
  ) async {
    Either<AuthFailure, Unit>? failureOrSuccess;

    final isEmailValid = state.emailAddress.isValid();
    final isPasswordValid = state.password.isValid();
    if (isEmailValid && isPasswordValid) {
      failureOrSuccess = await forwardedCall(
          emailAddress: state.emailAddress, password: state.password);

      return state.copyWith(
        isSubmitting: true,
        showErrorMessage: AutovalidateMode.always,
        authFailureOrSuccessOption: optionOf(failureOrSuccess),
      );
    }
    return state.copyWith(
      isSubmitting: false,
      showErrorMessage: AutovalidateMode.always,
      authFailureOrSuccessOption: optionOf(failureOrSuccess),
    );
  }
}
