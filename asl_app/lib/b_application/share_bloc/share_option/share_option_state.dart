part of 'share_option_bloc.dart';

@freezed
abstract class ShareOptionState with _$ShareOptionState {
  const factory ShareOptionState(
      {int? shareOption, required bool isLinkCopied}) = _ShareOptionState;

  factory ShareOptionState.initial() {
    return const ShareOptionState(isLinkCopied: false);
  }
}
