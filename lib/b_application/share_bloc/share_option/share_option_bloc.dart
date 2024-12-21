import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'share_option_event.dart';
part 'share_option_state.dart';
part 'share_option_bloc.freezed.dart';

@injectable
class ShareOptionBloc extends Bloc<ShareOptionEvent, ShareOptionState> {
  ShareOptionBloc() : super(ShareOptionState.initial()) {
    on<ShareOptionEvent>(mapEventToState);
  }

  Future<void> mapEventToState(
    ShareOptionEvent event,
    Emitter<ShareOptionState> emit,
  ) async {
    event.map(initialized: (e) {
      emit(ShareOptionState(shareOption: e.shareOption, isLinkCopied: false));
    }, updated: (e) {
      emit(ShareOptionState(shareOption: e.shareOption, isLinkCopied: false));
    }, sharedLinkCopied: (e) async {
      emit(ShareOptionState(
          shareOption: state.shareOption, isLinkCopied: !state.isLinkCopied));
    });
  }
}

enum ShareOption { everyone, restricted }

const List<Map<String, String>> SHARE_OPTIONS = [
  {
    'value': 'restricted',
    'text': 'خاص',
    'des': 'فقط المضافين يستطيعون رؤية الشجرة'
  },
  {
    'value': 'everyone',
    'text': 'عام',
    'des': 'أي شخص مع هذا الرابط يستطيع رؤية الشجرة'
  },
];
