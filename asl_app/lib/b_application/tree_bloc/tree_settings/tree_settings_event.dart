part of 'tree_settings_bloc.dart';

@freezed
class TreeSettingsEvent with _$TreeSettingsEvent {
  /// Load settings from Firebase
  const factory TreeSettingsEvent.initialized(TreeSettings? treeSettings) =
      _Initialized;

  /// User changes the zoom
  const factory TreeSettingsEvent.zoomChanged(double zoomScale) = _ZoomChanged;

  /// User changes number of generations to draw
  const factory TreeSettingsEvent.numberOfGenerationsChanged(
      {required UniqueId treeId,
      required int option}) = _NumberOfGenerationsChanged;

  /// User toggles showing unknown nodes
  const factory TreeSettingsEvent.showUnknownChanged(
      {required UniqueId treeId, required bool isShow}) = _ShowUnknownChanged;

  /// User toggles coping the share link
  const factory TreeSettingsEvent.sharedLinkCopied() = _SharedLinkCopied;

  /// User toggles coping the share link
  const factory TreeSettingsEvent.updateShareSettings(int shareOption) =
      _UpdateShareSettings;
}
