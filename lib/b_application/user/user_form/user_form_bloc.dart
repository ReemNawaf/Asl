import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:asl/c_domain/app_user/i_user_repo.dart';
import 'package:asl/c_domain/app_user/user.dart';
import 'package:asl/c_domain/app_user/user_failure.dart';
import 'package:asl/c_domain/app_user/value_objects.dart';

part 'user_form_event.dart';
part 'user_form_state.dart';
part 'user_form_bloc.freezed.dart';

@injectable
class UserFormBloc extends Bloc<UserFormEvent, UserFormState> {
  final IUserRepository _userRepository;

  UserFormBloc(this._userRepository) : super(UserFormState.initial());

  Stream<UserFormState> mapEventToState(
    UserFormEvent event,
  ) async* {
    yield* event.map(
      initialized: (e) async* {
        yield e.initialUserOption.fold(
          () => state,
          (initaillUser) => state.copyWith(
            user: initaillUser,
            isViewing: true,
          ),
        );
      },
      edited: (e) async* {
        yield e.existingUserOption.fold(
          () => state,
          (existingUser) => state.copyWith(
            user: existingUser,
            isEditing: true,
            isViewing: false,
          ),
        );
      },
      nameChanged: (e) async* {
        yield state.copyWith(
          user: state.user.copyWith(name: UserName(e.name)),
          // to get rid of any previous failure
          saveFailureOrSuccessOption: none(),
        );
      },
      avatarChanged: (e) async* {
        yield state.copyWith(
            user: state.user.copyWith(avater: UserAvater(e.avatar)),
            // to get rid of any previous failure
            saveFailureOrSuccessOption: none());
      },
      saved: (e) async* {
        Either<UserFailure, Unit>? failureOrSuccess;
        yield state.copyWith(
          isSaving: true,
          isEditing: false,
          // to get rid of any previous failure
          saveFailureOrSuccessOption: none(),
        );
        // check the category validation
        if (state.user.failureOption.isNone()) {
          // save the note, need instance
          failureOrSuccess = await _userRepository.update(state.user);
        }

        // after the trying of update or create
        yield state.copyWith(
          isViewing: true,
          isSaving: false,
          showErrorMessages: AutovalidateMode.always,
          // to get rid of any previous failure
          saveFailureOrSuccessOption: optionOf(failureOrSuccess),
        );
      },
    );
  }
}
