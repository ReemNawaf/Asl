part of 'child_form_bloc.dart';

@freezed
abstract class ChildFormEvent with _$ChildFormEvent {
  const factory ChildFormEvent.addChild(
      {required UniqueId treeId, required UniqueId relationId}) = _AddChild;

  const factory ChildFormEvent.addParent(UniqueId upperFamily) = _AddParent;

  const factory ChildFormEvent.addChildToList() = _AddChildToList;

  const factory ChildFormEvent.edited(Map<String, List<TNode>> children) =
      _Edited;
  const factory ChildFormEvent.changeName(String name) = _ChangedName;

  const factory ChildFormEvent.changeBirthDate(DateTime? date) =
      _ChangeBirthgeDate;
  const factory ChildFormEvent.changeDeathDate(DateTime? date) =
      _ChangeDeathDate;

  const factory ChildFormEvent.changeIsAlive(bool isAlive) = _ChangeIsAlive;

  const factory ChildFormEvent.changeGender(Gender gender) = _ChangeGender;

  const factory ChildFormEvent.saved() = _Saved;
}
