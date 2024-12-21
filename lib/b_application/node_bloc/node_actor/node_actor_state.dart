part of 'node_actor_bloc.dart';

@freezed
abstract class NodeActorState with _$NodeActorState {
  const factory NodeActorState.initial() = _Initial;
  const factory NodeActorState.actionInProgress() = _ActionInProgress;
  const factory NodeActorState.deleteFailure(TNodeFailure nodeFailure) =
      _DeleteFailure;
  const factory NodeActorState.deleteSuccess() = _DeleteSuccess;
}
