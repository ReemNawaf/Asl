part of 'tree_watcher_bloc.dart';

@freezed
abstract class TreeWatcherEvent with _$TreeWatcherEvent {
  const factory TreeWatcherEvent.getAllTrees() = _GetAllTrees;

  const factory TreeWatcherEvent.getTree(UniqueId treeId) = _GetTree;
}
