part of 'local_tree_bloc.dart';

@freezed
class LocalTreeState with _$LocalTreeState {
  const factory LocalTreeState({
    // Loading flags
    required bool isLoadingTrees,
    required bool isLoadingTree,
    required int pendingSyncCount,

    // Trees list + selection
    required List<Tree> trees,
    required UniqueId? selectedTreeId,

    // Root / focus ids
    required UniqueId? mainRootId,
    required UniqueId? focusRootId,

    // Canonical normalized store
    required TreeGraphStore store,

    // tree settings
    required TreeSettings? settings,

    // Failures + sync status
    required Option<bool> lastSyncSuccess,
    required Option<TreeFailure> treeFailureOption,
    required Option<TNodeFailure> nodeFailureOption,
    required Option<RelationFailure> relationFailureOption,
  }) = _LocalTreeState;

  factory LocalTreeState.initial() => LocalTreeState(
        isLoadingTrees: false,
        isLoadingTree: false,
        pendingSyncCount: 0,
        trees: const [],
        selectedTreeId: null,
        mainRootId: null,
        focusRootId: null,
        store: TreeGraphStore.empty(),
        settings: null,
        lastSyncSuccess: none(),
        treeFailureOption: none(),
        nodeFailureOption: none(),
        relationFailureOption: none(),
      );
}
