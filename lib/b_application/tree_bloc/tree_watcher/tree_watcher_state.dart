part of 'tree_watcher_bloc.dart';

@freezed
abstract class TreeWatcherState with _$TreeWatcherState {
  const factory TreeWatcherState.initial() = _Initial;
  const factory TreeWatcherState.getAllTreesInProgress() = _LoadInProgress;
  const factory TreeWatcherState.getTreeInProgress() = _InProgress;

  const factory TreeWatcherState.gettingAllTreesSuccess(List<Tree> trees) =
      _LoadSuccess;
  const factory TreeWatcherState.gettingAllTreesFailure(
      TreeFailure treeFailure) = _LoadFailure;

  const factory TreeWatcherState.gettingTreeSuccess(Tree tree) =
      _GettingTreeSuccess;
  const factory TreeWatcherState.gettingTreeFailure(TreeFailure treeFailure) =
      _GettingTreeFailure;
}
