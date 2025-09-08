part of 'family_watcher_bloc.dart';

@freezed
abstract class FamilyWatcherState with _$FamilyWatcherState {
  const factory FamilyWatcherState.initial() = _Initial;
  const factory FamilyWatcherState.loadInProgress() = _LoadInProgress;

  const factory FamilyWatcherState.loadSuccess(Ufamily uFamily) = _LoadSuccess;
  const factory FamilyWatcherState.loadFailure(TNodeFailure treeFailure) =
      _LoadFailure;
}
