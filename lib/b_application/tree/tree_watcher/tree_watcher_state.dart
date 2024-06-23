part of 'tree_watcher_bloc.dart';

@freezed
abstract class TreeWatcherState with _$TreeWatcherState {
  const factory TreeWatcherState.initial() = _Initial;
  const factory TreeWatcherState.loadInProgress() = _LoadInProgress;
  const factory TreeWatcherState.inProgress() = _InProgress;

  const factory TreeWatcherState.loadSuccess(List<Tree> trees) = _LoadSuccess;
  const factory TreeWatcherState.loadFailure(TreeFailure treeFailure) =
      _LoadFailure;

  const factory TreeWatcherState.gettingTreeSuccess(Tree tree) =
      _GettingTreeSuccess;
  const factory TreeWatcherState.gettingTreeFailure(
      TreeFailure purchaseFailure) = _GettingTreeFailure;
}
