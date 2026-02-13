part of 'tree_zoom_bloc.dart';

@freezed
class TreeZoomEvent with _$TreeZoomEvent {
  /// Load settings from Firebase
  const factory TreeZoomEvent.initialized() = _Initialized;

  /// User changes the zoom
  const factory TreeZoomEvent.zoomChanged(double zoomScale) = _ZoomChanged;
}
