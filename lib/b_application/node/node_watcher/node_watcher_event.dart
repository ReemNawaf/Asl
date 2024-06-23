part of 'node_watcher_bloc.dart';

@freezed
abstract class NodeWatcherEvent with _$NodeWatcherEvent {
  const factory NodeWatcherEvent.watchAllStarted(Tree tree) = _WatchAllStarted;

  const factory NodeWatcherEvent.getNode(
      {required UniqueId treeId, required UniqueId nodeId}) = _GetNode;

  const factory NodeWatcherEvent.nodesReceived(
          Either<TNodeFailure, List<TNode>> failureOrNodes, Tree tree) =
      _NodesReceived;
}
