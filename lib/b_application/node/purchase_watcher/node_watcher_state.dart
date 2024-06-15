part of 'node_watcher_bloc.dart';

@freezed
abstract class NodeWatcherState with _$NodeWatcherState {
  const factory NodeWatcherState.initial() = _Initial;
  const factory NodeWatcherState.loadInProgress() = _LoadInProgress;
  const factory NodeWatcherState.inProgress() = _InProgress;

  const factory NodeWatcherState.loadSuccess(List<TNode> nodes) = _LoadSuccess;
  const factory NodeWatcherState.loadFailure(TNodeFailure purchaseFailure) =
      _LoadFailure;

  const factory NodeWatcherState.gettingNodeSuccess(TNode node) =
      _GettingNodeSuccess;
  const factory NodeWatcherState.gettingNodeFailure(
      TNodeFailure purchaseFailure) = _GettingNodeFailure;
}
