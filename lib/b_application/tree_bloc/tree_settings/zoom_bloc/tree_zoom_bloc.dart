import 'package:asl/a_presentation/a_shared/constants.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'tree_zoom_event.dart';
part 'tree_zoom_state.dart';
part 'tree_zoom_bloc.freezed.dart';

@injectable
class TreeZoomBloc extends Bloc<TreeZoomEvent, TreeZoomState> {
  TreeZoomBloc() : super(TreeZoomState.initial()) {
    on<_ZoomChanged>(_onZoomChanged);
  }

  void _onZoomChanged(
    _ZoomChanged event,
    Emitter<TreeZoomState> emit,
  ) {
    emit(state.copyWith(zoomScale: event.zoomScale));
  }
}
