part of 'tree_zoom_bloc.dart';

@freezed
class TreeZoomState with _$TreeZoomState {
  const factory TreeZoomState({
    required double zoomScale,
  }) = _TreeZoomState;

  factory TreeZoomState.initial() => const TreeZoomState(zoomScale: ZOOM_DEF);
}
