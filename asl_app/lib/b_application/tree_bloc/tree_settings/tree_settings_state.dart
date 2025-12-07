part of 'tree_settings_bloc.dart';

@freezed
class TreeSettingsState with _$TreeSettingsState {
  const factory TreeSettingsState({
    required double zoomScale,
    required bool showUnknown,
    int? numberOfGenerations,
    @Default(false) bool isLoading,
  }) = _TreeSettingsState;

  factory TreeSettingsState.initial() => const TreeSettingsState(
        zoomScale: ZOOM_DEF,
        showUnknown: true,
        numberOfGenerations: null, // null = draw all generations
      );
}
