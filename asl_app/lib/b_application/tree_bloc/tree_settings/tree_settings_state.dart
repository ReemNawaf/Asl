part of 'tree_settings_bloc.dart';

@freezed
class TreeSettingsState with _$TreeSettingsState {
  const factory TreeSettingsState({
    required double zoomScale,
    required bool showUnknown,
    required int numberOfGenerations,
    required bool isLinkCopied,
    required int shareOption,
    required int langOpt,
    @Default(false) bool isLoading,
  }) = _TreeSettingsState;

  factory TreeSettingsState.initial() => const TreeSettingsState(
        zoomScale: ZOOM_DEF,
        showUnknown: true,
        numberOfGenerations: 0,
        shareOption: 0,
        langOpt: 0,
        isLinkCopied: false,
      );
}
