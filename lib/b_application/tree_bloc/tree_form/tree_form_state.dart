part of 'tree_form_bloc.dart';

@freezed
abstract class TreeFormState with _$TreeFormState {
  const factory TreeFormState({
    required Tree tree,
    required TNode root,
    required AutovalidateMode showErrorMessages,
    required bool isEditing, // only for update existing ones
    required bool isSaving,
    required bool isViewing,
    required bool isCreated,
    required UniqueId userId,
    required Option<Either<TreeFailure, TNode>> saveFailureOrSuccessOption,
  }) = _TreeFormState;

  factory TreeFormState.initial() {
    final tree = Tree.empty();
    final root = TNode.empty().copyWith(
      nodeId: tree.rootId,
      treeId: tree.treeId,
    );

    return TreeFormState(
      tree: tree,
      root: root,
      showErrorMessages: AutovalidateMode.disabled,
      isEditing: false,
      isSaving: false,
      isViewing: true,
      isCreated: false,
      userId: UniqueId(),
      saveFailureOrSuccessOption: none(),
    );
  }
}
