part of 'node_watcher_bloc.dart';

@freezed
abstract class NodeWatcherEvent with _$NodeWatcherEvent {
  const factory NodeWatcherEvent.getTree(
      {required UniqueId treeId, required UniqueId rootId}) = _WatchAllStarted;

  const factory NodeWatcherEvent.getNode(
      {required UniqueId treeId, required UniqueId nodeId}) = _GetNode;
}
