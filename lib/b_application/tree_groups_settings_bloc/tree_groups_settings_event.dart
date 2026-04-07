part of 'tree_groups_settings_bloc.dart';

@freezed
class TreeGroupsSettingsEvent with _$TreeGroupsSettingsEvent {
  const factory TreeGroupsSettingsEvent.syncedFromSettings(
    List<TreeGroup> groups,
  ) = _SyncedFromSettings;

  const factory TreeGroupsSettingsEvent.editingSet(bool isEditing) =
      _EditingSet;

  /// New group defaults (color/icon keys) are chosen in the UI layer.
  const factory TreeGroupsSettingsEvent.groupAdded(TreeGroup group) = _GroupAdded;

  const factory TreeGroupsSettingsEvent.removeAt(int index) = _RemoveAt;

  const factory TreeGroupsSettingsEvent.reorder({
    required int oldIndex,
    required int newIndex,
  }) = _Reorder;

  const factory TreeGroupsSettingsEvent.colorPicked({
    required int index,
    required String colorKey,
  }) = _ColorPicked;

  const factory TreeGroupsSettingsEvent.saveRequested({
    required TreeSettings settings,
  }) = _SaveRequested;

  /// Emitted when [LocalTreeEvent.saveTreeGroups] fails (repo error).
  const factory TreeGroupsSettingsEvent.savePersistFailed() = _SavePersistFailed;
}
