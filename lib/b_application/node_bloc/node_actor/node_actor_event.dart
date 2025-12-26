part of 'node_actor_bloc.dart';

@freezed
abstract class NodeActorEvent with _$NodeActorEvent {
  const factory NodeActorEvent.deleted(TNode node) = _Deleted;
}
