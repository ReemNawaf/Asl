part of 'tree_settings_bloc.dart';

@freezed
class TreeSettingsEvent with _$TreeSettingsEvent {
  /// Load settings from Firebase
  const factory TreeSettingsEvent.initialized(UniqueId treeId) = _Initialized;

  /// User changes the zoom
  const factory TreeSettingsEvent.zoomChanged(double zoomScale) = _ZoomChanged;

  /// User changes number of generations to draw
  const factory TreeSettingsEvent.numberOfGenerationsChanged(int? number) =
      _NumberOfGenerationsChanged;

  /// User toggles showing unknown nodes
  const factory TreeSettingsEvent.showUnknownChanged(bool isShow) =
      _ShowUnknownChanged;
}
