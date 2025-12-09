import 'package:asl/a_presentation/a_shared/constants.dart';
import 'package:asl/b_application/share_bloc/share_option/share_option_bloc.dart';
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
  }

  Future<void> _onInitialized(
    _Initialized event,
    Emitter<TreeSettingsState> emit,
  ) async {
    emit(state.copyWith(isLoading: true));

    final loaded = TreeSettings(
      treeId: event.treeId,
      numberOfGeneration: 0,
      isShowUnknown: false,
    ); // await _treeRepository.loadSettings(event.treeId);

    emit(state.copyWith(
      zoomScale: ZOOM_DEF,
      showUnknown: loaded.isShowUnknown,
      numberOfGenerations: loaded.numberOfGeneration,
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
    print('08 | state changed ${state.numberOfGenerations}');
  }

  Future<void> _onShowUnknownChanged(
    _ShowUnknownChanged event,
    Emitter<TreeSettingsState> emit,
  ) async {
    emit(state.copyWith(showUnknown: event.isShow));
  }
}
