part of 'child_form_bloc.dart';

@freezed
abstract class ChildFormState with _$ChildFormState {
  const factory ChildFormState({
    required Map<String, List<TNode>> children,
    required List<TNode> deletedChildren,
    required TNode tempChild,
    required UniqueId relationId,
    required AutovalidateMode showErrorMessages,
    required bool isSaving,
    required bool isViewing,
    required bool isEditing,
    required bool isAdding,
    required bool isCreated,
    required Option<Either<TNodeFailure, Unit>> saveFailureOrSuccessOption,
  }) = _ChildFormState;

  factory ChildFormState.initial() => ChildFormState(
        children: {},
        tempChild: TNode.empty(),
        relationId: UniqueId(),
        deletedChildren: [],
        showErrorMessages: AutovalidateMode.disabled,
        isSaving: false,
        isViewing: true,
        isEditing: false,
        isAdding: false,
        isCreated: false,
        saveFailureOrSuccessOption: none(),
      );
}
