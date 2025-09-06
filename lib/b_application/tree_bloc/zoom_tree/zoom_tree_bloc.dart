import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';

part 'zoom_tree_event.dart';
part 'zoom_tree_state.dart';

class ZoomTreeBloc extends Bloc<ZoomTreeEvent, ZoomTreeState> {
  ZoomTreeBloc() : super(const ZoomTreeState(scale: ZOOM_DEF)) {
    on<ZoomTreeChanged>(_onZoomTreeChanged);
  }

  void _onZoomTreeChanged(ZoomTreeChanged event, Emitter<ZoomTreeState> emit) {
    emit(ZoomTreeState(scale: event.scale));
  }
}
