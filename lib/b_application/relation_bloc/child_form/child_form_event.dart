part of 'child_form_bloc.dart';

@freezed
abstract class ChildFormEvent with _$ChildFormEvent {
  const factory ChildFormEvent.initialized(
      {required UniqueId treeId, required UniqueId upperFamily}) = _Initialized;

  const factory ChildFormEvent.edited(TNode child) = _Edited;
  const factory ChildFormEvent.changeName(String name) = _ChangedName;

  const factory ChildFormEvent.changeBirthDate(DateTime? date) =
      _ChangeBirthgeDate;
  const factory ChildFormEvent.changeDeathDate(DateTime? date) =
      _ChangeDeathDate;

  const factory ChildFormEvent.changeIsAlive(bool isAlive) = _ChangeIsAlive;

  const factory ChildFormEvent.changeGender(Gender gender) = _ChangeGender;

  const factory ChildFormEvent.saved() = _Saved;
}
