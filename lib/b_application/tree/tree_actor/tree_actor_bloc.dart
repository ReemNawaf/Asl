import 'dart:async';

import 'package:asl/c_domain/tree/i_tree_repository.dart';
import 'package:asl/c_domain/tree/tree.dart';
import 'package:asl/c_domain/tree/tree_failure.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'tree_actor_bloc.freezed.dart';
part 'tree_actor_event.dart';
part 'tree_actor_state.dart';

@injectable
class TreeActorBloc extends Bloc<TreeActorEvent, TreeActorState> {
  final ITreeRepository _treeRepository;
  TreeActorBloc(this._treeRepository) : super(const TreeActorState.initial()) {
    on<TreeActorEvent>(mapEventToState);
  }

  Future<void> mapEventToState(
    TreeActorEvent event,
    Emitter<TreeActorState> emit,
  ) async {
    const TreeActorState.actionInProgress();
    final possibleFailure = await _treeRepository.delete(treeId: event.tree.id);
    emit(possibleFailure.fold(
      (f) => TreeActorState.deleteFailure(f),
      (_) => const TreeActorState.deleteSuccess(),
    ));
  }
}
