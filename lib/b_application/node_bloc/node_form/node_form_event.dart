part of 'node_form_bloc.dart';

@freezed
abstract class NodeFormEvent with _$NodeFormEvent {
  // for when editing the existed one, to have the previous data filled
  const factory NodeFormEvent.initialized(TNode node) = _Initialized;
  const factory NodeFormEvent.ended() = _Ended;
  const factory NodeFormEvent.added(Option<TNode> initialNodeOption) = _Added;
  const factory NodeFormEvent.edited(bool isEditing) = _Edited;
  const factory NodeFormEvent.updateCurrentPanel(int panelIndex) =
      _UpdateCurrentPanel;

  const factory NodeFormEvent.firstNameChanged(String title) =
      _FirstNameChanged;

  const factory NodeFormEvent.birthDateChanged(DateTime? date) =
      _BirthDateChanged;
  const factory NodeFormEvent.deathDateChanged(DateTime? date) =
      _DeathDateChanged;

  const factory NodeFormEvent.changeIsAvlive(bool isAlive) = _ChangedIsAvlive;
  const factory NodeFormEvent.makeItRoot() = _MakeItRoot;
  const factory NodeFormEvent.changeGender(Gender gender) = _ChangedGender;

  // toggle to show the widgets for adding new partner in relation panel
  const factory NodeFormEvent.addPartner(bool isAdding) = _AddPartner;

  // toggle to show the widgets for adding new child in relation panel
  const factory NodeFormEvent.addChild(bool isAdding) = _AddChild;

  const factory NodeFormEvent.saved() = _Saved;
}
