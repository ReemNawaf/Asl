part of 'tree_form_bloc.dart';

@freezed
abstract class TreeFormEvent with _$TreeFormEvent {
  // for when editing the existed one, to have the previous data filled
  const factory TreeFormEvent.initialized(Option<Tree> initialTreeOption) =
      _Initialized;
  const factory TreeFormEvent.edited(Option<Tree> existingTreeOption) = _Edited;
  const factory TreeFormEvent.changeTreeName(String treeName) =
      _ChangedTreeName;
  const factory TreeFormEvent.changeRootName(String rootName) =
      _ChangedRootName;

  const factory TreeFormEvent.changeRootBirthDate(DateTime? birthdate) =
      _ChangedRootBirthDate;
  const factory TreeFormEvent.changeRootDeathDate(DateTime? deathdate) =
      _ChangedRootDeathDate;

  const factory TreeFormEvent.changeRootIsAvlive(bool isAlive) =
      _ChangedRootIsAvlive;
  const factory TreeFormEvent.changeRootGender(Gender gender) =
      _ChangedRootGender;

  const factory TreeFormEvent.saved() = _Saved;
}
