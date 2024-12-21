part of 'current_tree_bloc.dart';

@freezed
abstract class CurrentTreeState with _$CurrentTreeState {
  const factory CurrentTreeState({
    Tree? currentTree,
    required List<Tree> trees,
  }) = _CurrentTreeState;

  factory CurrentTreeState.initial() {
    return const CurrentTreeState(trees: <Tree>[], currentTree: null);
  }
}
