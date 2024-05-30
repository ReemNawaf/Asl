part of 'user_form_bloc.dart';

@freezed
class UserFormEvent with _$UserFormEvent {
  // for when editting the existed one, to have the previous data filled
  const factory UserFormEvent.initialized(Option<AppUser> initialUserOption) =
      _Initialized;
  const factory UserFormEvent.edited(Option<AppUser> existingUserOption) =
      _Edited;
  const factory UserFormEvent.nameChanged(String name) = _NameChanged;
  const factory UserFormEvent.avatarChanged(String avatar) = _AvatarChanged;
  const factory UserFormEvent.saved() = _Saved;
}
