part of 'sign_in_form_bloc.dart';

// a simple data class, a single state class, (not multiple class or Union)
@freezed
abstract class SignInFormState with _$SignInFormState {
  const factory SignInFormState({
    required EmailAddress emailAddress,
    required Password password,
    required bool isSubmitting,
    required AutovalidateMode showErrorMessage,
    required Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption,
  }) = _SignInFormState;

  // The initial value of the singInState
  factory SignInFormState.initial() => SignInFormState(
        emailAddress: EmailAddress(''),
        password: Password(''),
        isSubmitting: false,
        showErrorMessage: AutovalidateMode.disabled,
        authFailureOrSuccessOption: none(),
      );
}
