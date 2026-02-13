part of 'tree_settings_bloc.dart';

@freezed
class TreeSettingsState with _$TreeSettingsState {
  const factory TreeSettingsState({
    required bool showUnknown,
    required int numberOfGenerations,
    required bool isLinkCopied,
    required bool isPublic,
    required int langOpt,
    required bool isShareLink,
    @Default(false) bool hideSidbar,
  }) = _TreeSettingsState;

  factory TreeSettingsState.initial() => const TreeSettingsState(
      showUnknown: true,
      numberOfGenerations: 0,
      isPublic: false,
      hideSidbar: false,
      langOpt: 0,
      isLinkCopied: false,
      isShareLink: false);
}
