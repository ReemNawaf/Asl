part of 'tree_watcher_bloc.dart';

@freezed
abstract class TreeWatcherEvent with _$TreeWatcherEvent {
  const factory TreeWatcherEvent.getAllTrees() = _WatchAllStarted;

  const factory TreeWatcherEvent.getTree(UniqueId treeId) = _GetTree;
}
