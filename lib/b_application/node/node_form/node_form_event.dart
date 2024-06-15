part of 'node_form_bloc.dart';

@freezed
abstract class NodeFormEvent with _$NodeFormEvent {
  // for when editing the existed one, to have the previous data filled
  const factory NodeFormEvent.initialized(Option<TNode> initialNodeOption) =
      _Initialized;
  const factory NodeFormEvent.ended(Option<TNode> initialNodeOption) = _Ended;
  const factory NodeFormEvent.added(Option<TNode> initialNodeOption) = _Added;
  const factory NodeFormEvent.edited(Option<TNode> existingNodeOption) =
      _Edited;

  const factory NodeFormEvent.firstNameChanged(String title) =
      _FirstNameChanged;

  const factory NodeFormEvent.dateChanged(DateTime date) = _DateChanged;

  const factory NodeFormEvent.saved() = _Saved;
}
