part of 'family_watcher_bloc.dart';

@freezed
abstract class FamilyWatcherEvent with _$FamilyWatcherEvent {
  const factory FamilyWatcherEvent.getNodeUpperFamily(TNode node) =
      _GetNodeUpperFamily;
}
