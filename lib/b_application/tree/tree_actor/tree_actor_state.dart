part of 'tree_actor_bloc.dart';

@freezed
abstract class TreeActorState with _$TreeActorState {
  const factory TreeActorState.initial() = _Initial;
  const factory TreeActorState.actionInProgress() = _ActionInProgress;
  const factory TreeActorState.deleteFailure(TreeFailure treeFailure) =
      _DeleteFailure;
  const factory TreeActorState.deleteSuccess() = _DeleteSuccess;
}
