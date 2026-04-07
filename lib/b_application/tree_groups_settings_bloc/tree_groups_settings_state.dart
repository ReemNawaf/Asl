part of 'tree_groups_settings_bloc.dart';

@freezed
class TreeGroupsSettingsState with _$TreeGroupsSettingsState {
  const factory TreeGroupsSettingsState({
    required List<TreeGroup> draft,
    @Default(false) bool saving,
    /// When false, group rows are read-only; use [TreeGroupsSettingsEvent.editingSet] to enter edit mode.
    @Default(false) bool isEditing,
  }) = _TreeGroupsSettingsState;
}
