part of 'tree_watcher_bloc.dart';

@freezed
abstract class TreeWatcherState with _$TreeWatcherState {
  const factory TreeWatcherState.initial() = _Initial;
  const factory TreeWatcherState.loadInProgress() = _LoadInProgress;
  const factory TreeWatcherState.loadSuccess(List<Tree> categories) =
      _LoadSuccess;
  const factory TreeWatcherState.loadFailure(TreeFailure treeFailure) =
      _LoadFailure;
}
