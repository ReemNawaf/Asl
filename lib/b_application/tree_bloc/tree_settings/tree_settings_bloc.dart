import 'dart:async';

import 'package:asl/a_presentation/a_shared/constants.dart';
import 'package:asl/c_domain/core/value_objects.dart';
import 'package:asl/c_domain/tree/i_tree_repository.dart';
import 'package:asl/c_domain/tree/tree_settings.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'tree_settings_event.dart';
part 'tree_settings_state.dart';
part 'tree_settings_bloc.freezed.dart';

@injectable
class TreeSettingsBloc extends Bloc<TreeSettingsEvent, TreeSettingsState> {
  final ITreeRepository _treeRepository;

  TreeSettingsBloc(this._treeRepository) : super(TreeSettingsState.initial()) {
    on<_Initialized>(_onInitialized);
    on<_ZoomChanged>(_onZoomChanged);
    on<_NumberOfGenerationsChanged>(_onNumberOfGenerationsChanged);
    on<_ShowUnknownChanged>(_onShowUnknownChanged);
    on<_SharedLinkCopied>(_onSharedLinkCopied);
    on<_UpdateShareSettings>(_onUpdateShareSettings);
    on<_UpdateIsShareLink>(_onUpdateIsShareLink);
  }

  Future<void> _onInitialized(
    _Initialized event,
    Emitter<TreeSettingsState> emit,
  ) async {
    final treeSettings = event.treeSettings ?? TreeSettings.empty();
    emit(state.copyWith(
      zoomScale: ZOOM_DEF,
      showUnknown: treeSettings.isShowUnknown,
      numberOfGenerations: treeSettings.numberOfGenerationOpt,
      shareOption: treeSettings.shareOpt,
      isShareLink: event.isShareLink ?? false,
    ));
  }

  Future<void> _onZoomChanged(
    _ZoomChanged event,
    Emitter<TreeSettingsState> emit,
  ) async {
    emit(state.copyWith(zoomScale: event.zoomScale));
  }

  Future<void> _onNumberOfGenerationsChanged(
    _NumberOfGenerationsChanged event,
    Emitter<TreeSettingsState> emit,
  ) async {
    emit(state.copyWith(
      numberOfGenerations: event.option,
    ));

    unawaited(_treeRepository.updateNumberOfGeneration(
        treeId: event.treeId, option: event.option));
  }

  Future<void> _onShowUnknownChanged(
    _ShowUnknownChanged event,
    Emitter<TreeSettingsState> emit,
  ) async {
    emit(state.copyWith(showUnknown: event.isShow));
    unawaited(_treeRepository.updateIsShowUnknown(
        treeId: event.treeId, isShowUnknown: event.isShow));
  }

  Future<void> _onSharedLinkCopied(
    _SharedLinkCopied event,
    Emitter<TreeSettingsState> emit,
  ) async {
    emit(state.copyWith(
        shareOption: state.shareOption, isLinkCopied: !state.isLinkCopied));
  }

  Future<void> _onUpdateShareSettings(
    _UpdateShareSettings event,
    Emitter<TreeSettingsState> emit,
  ) async {
    emit(state.copyWith(shareOption: event.shareOption, isLinkCopied: false));
  }

  Future<void> _onUpdateIsShareLink(
    _UpdateIsShareLink event,
    Emitter<TreeSettingsState> emit,
  ) async {
    emit(state.copyWith(isShareLink: event.isShareLink));
  }
}

enum ShareOption { everyone, restricted }

const List<Map<String, String>> SHARE_OPTIONS = [
  {'value': 'restricted', 'text': 'private', 'des': 'private_description'},
  {'value': 'everyone', 'text': 'public', 'des': 'public_description'},
];
const List<Map<String, dynamic>> NUM_GEN_OPTIONS = [
  {'value': 'all_generations', 'number': null},
  {'value': 'three_generations', 'number': 2},
  {'value': 'four_generations', 'number': 3},
  {'value': 'five_generations', 'number': 4},
  {'value': 'six_generations', 'number': 5},
  {'value': 'seven_generations', 'number': 6},
  {'value': 'eight_generations', 'number': 7},
];

const List<Map<String, String>> LANGUAGE_OPTIONS = [
  {'value': 'arabic', 'text': 'arabic'},
  {'value': 'english', 'text': 'english'},
];
