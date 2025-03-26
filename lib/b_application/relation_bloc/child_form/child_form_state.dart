part of 'child_form_bloc.dart';

@freezed
abstract class ChildFormState with _$ChildFormState {
  const factory ChildFormState({
    required TNode node,
    required TNode child,
    required UniqueId relationId,
    required AutovalidateMode showErrorMessages,
    required bool isSaving,
    required bool isViewing,
    required bool isAdding,
    required Option<Either<RelationFailure, Unit>> saveFailureOrSuccessOption,
  }) = _ChildFormState;

  factory ChildFormState.initial() => ChildFormState(
        node: TNode.empty(),
        child: TNode.empty(),
        relationId: UniqueId(),
        showErrorMessages: AutovalidateMode.disabled,
        isSaving: false,
        isViewing: true,
        isAdding: false,
        saveFailureOrSuccessOption: none(),
      );
}
