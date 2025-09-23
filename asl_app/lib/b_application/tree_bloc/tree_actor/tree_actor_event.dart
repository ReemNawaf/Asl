part of 'tree_actor_bloc.dart';

@freezed
abstract class TreeActorEvent with _$TreeActorEvent {
  const factory TreeActorEvent.deleted({required UniqueId treeId}) = _Deleted;
}
