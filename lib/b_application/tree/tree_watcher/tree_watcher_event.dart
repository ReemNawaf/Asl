part of 'tree_watcher_bloc.dart';

@freezed
abstract class TreeWatcherEvent with _$TreeWatcherEvent {
  const factory TreeWatcherEvent.watchAllStarted() = _WatchAllStarted;
  const factory TreeWatcherEvent.treesReceived(
    Either<TreeFailure, List<Tree>> failureOrTrees,
  ) = _TreesReceived;
}
