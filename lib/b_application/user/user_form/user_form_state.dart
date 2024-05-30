part of 'user_form_bloc.dart';

@freezed
class UserFormState with _$UserFormState {
  const factory UserFormState({
    required AppUser user,
    required AutovalidateMode showErrorMessages,
    required bool isEditing, // only for update existing ones
    required bool isSaving,
    required bool isViewing,
    required Option<Either<UserFailure, Unit>> saveFailureOrSuccessOption,
  }) = _UserFormState;

  factory UserFormState.initial() => UserFormState(
        user: AppUser.empty(),
        showErrorMessages: AutovalidateMode.disabled,
        isEditing: false,
        isSaving: false,
        isViewing: true,
        saveFailureOrSuccessOption: none(),
      );
}
