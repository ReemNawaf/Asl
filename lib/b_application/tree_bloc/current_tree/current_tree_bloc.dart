import 'dart:async';
import 'package:asl/c_domain/tree/tree.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
part 'current_tree_event.dart';
part 'current_tree_state.dart';
part 'current_tree_bloc.freezed.dart';

@injectable
class CurrentTreeBloc extends Bloc<CurrentTreeEvent, CurrentTreeState> {
  CurrentTreeBloc() : super(CurrentTreeState.initial()) {
    on<CurrentTreeEvent>(mapEventToState);
  }

  Future<void> mapEventToState(
    CurrentTreeEvent event,
    Emitter<CurrentTreeState> emit,
  ) async {
    event.map(
      initialized: (e) {
        emit(CurrentTreeState(currentTree: e.currentTree, trees: e.trees));
      },
      updated: (e) {
        emit(CurrentTreeState(currentTree: e.currentTree, trees: state.trees));
      },
      updateAllTree: (e) {
        emit(CurrentTreeState(
            currentTree: state.currentTree ?? e.trees[0], trees: e.trees));
      },
    );
  }
}
