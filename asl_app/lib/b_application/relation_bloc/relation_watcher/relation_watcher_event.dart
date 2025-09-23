part of 'relation_watcher_bloc.dart';

@freezed
abstract class RelationWatcherEvent with _$RelationWatcherEvent {
  const factory RelationWatcherEvent.getAllRelations(
      UniqueId treeId, UniqueId nodeId) = _WatchAllRelation;

  const factory RelationWatcherEvent.getRelation(UniqueId treeId, UniqueId id) =
      _GetRelation;
}
