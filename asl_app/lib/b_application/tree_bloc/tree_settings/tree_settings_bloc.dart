import 'dart:async';

import 'package:asl/a_presentation/a_shared/constants.dart';
import 'package:asl/c_domain/core/value_objects.dart';
import 'package:asl/c_domain/tree/i_tree_repository.dart';
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
  }

  Future<void> _onInitialized(
    _Initialized event,
    Emitter<TreeSettingsState> emit,
  ) async {
    emit(state.copyWith(isLoading: true, shareOption: event.shareOption));

    final loaded = await _treeRepository.loadSettings(event.treeId);
    print('LOG | loaded $loaded');

    emit(state.copyWith(
      zoomScale: ZOOM_DEF,
      showUnknown: loaded.fold((l) => false, (r) => r.isShowUnknown),
      numberOfGenerations:
          loaded.fold((l) => 0, (r) => r.numberOfGenerationOpt),
      shareOption: loaded.fold((l) => 0, (r) => r.shareOpt),
      isLoading: false,
    ));

    emit(state.copyWith(isLoading: false));
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
}

enum ShareOption { everyone, restricted }

const List<Map<String, String>> SHARE_OPTIONS = [
  {'value': 'restricted', 'text': 'private', 'des': 'private_description'},
  {'value': 'everyone', 'text': 'public', 'des': 'public_description'},
];
const List<Map<String, dynamic>> NUM_GEN_OPTIONS = [
  {'value': 'all_generations', 'number': null},
  {'value': 'three_generations', 'number': 3},
  {'value': 'four_generations', 'number': 4},
  {'value': 'five_generations', 'number': 5},
  {'value': 'six_generations', 'number': 6},
  {'value': 'seven_generations', 'number': 7},
  {'value': 'eight_generations', 'number': 8},
];

const List<Map<String, String>> LANGUAGE_OPTIONS = [
  {'value': 'arabic', 'text': 'arabic'},
  {'value': 'english', 'text': 'english'},
];
