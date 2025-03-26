part of 'child_form_bloc.dart';

@freezed
abstract class ChildFormEvent with _$ChildFormEvent {
  const factory ChildFormEvent.initialized(TNode node) = _Initialized;

  const factory ChildFormEvent.addChild(
      String name, UniqueId relationId, Gender gender) = _AddChild;

  const factory ChildFormEvent.saved() = _Saved;
}
