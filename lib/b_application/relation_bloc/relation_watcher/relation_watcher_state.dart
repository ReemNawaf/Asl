part of 'relation_watcher_bloc.dart';

@freezed
abstract class RelationWatcherState with _$RelationWatcherState {
  const factory RelationWatcherState.initial() = _Initial;
  const factory RelationWatcherState.getAllRelationsInProgress() =
      _LoadInProgress;
  const factory RelationWatcherState.getRelationInProgress() = _InProgress;

  const factory RelationWatcherState.gettingAllRelationsSuccess(
      List<Relation> relation) = _LoadSuccess;
  const factory RelationWatcherState.gettingAllRelationsFailure(
      RelationFailure treeFailure) = _LoadFailure;

  const factory RelationWatcherState.gettingRelationSuccess(Relation relation) =
      _gettingRelationSuccess;
  const factory RelationWatcherState.gettingRelationFailure(
      RelationFailure relationFailure) = _GettingRelationFailure;
}
