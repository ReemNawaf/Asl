part of 'tree_settings_bloc.dart';

@freezed
class TreeSettingsEvent with _$TreeSettingsEvent {
  /// Load settings from Firebase
  const factory TreeSettingsEvent.initialized(TreeSettings? treeSettings,
      {bool? isShareLink}) = _Initialized;

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

  /// Update sharing settings
  const factory TreeSettingsEvent.updateShareSettings(
      {required UniqueId treeId,
      required bool isPublic}) = _UpdateShareSettings;

  /// Update as share link
  const factory TreeSettingsEvent.updateIsShareLink(bool isShareLink) =
      _UpdateIsShareLink;
}
