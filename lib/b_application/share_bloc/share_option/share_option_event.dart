part of 'share_option_bloc.dart';

@freezed
abstract class ShareOptionEvent with _$ShareOptionEvent {
  // for when editing the existed one, to have the previous data filled
  const factory ShareOptionEvent.initialized(int shareOption) = _Initialized;
  const factory ShareOptionEvent.updated(int shareOption) = _Updated;

  const factory ShareOptionEvent.sharedLinkCopied() = _SharedLinkCopied;
}
