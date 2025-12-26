import 'dart:async';

import 'package:asl/c_domain/node/i_node_repository.dart';
import 'package:asl/c_domain/node/t_node.dart';
import 'package:asl/c_domain/node/t_node_failure.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'node_actor_event.dart';
part 'node_actor_state.dart';
part 'node_actor_bloc.freezed.dart';

@injectable
class NodeActorBloc extends Bloc<NodeActorEvent, NodeActorState> {
  final INodeRepository _nodeRepository;
  NodeActorBloc(this._nodeRepository) : super(const NodeActorState.initial());

  Future<void> mapEventToState(
    NodeActorEvent event,
  ) async {
    const NodeActorState.actionInProgress();

    final possibleFailure = await _nodeRepository.delete(
        treeId: event.node.treeId, nodeId: event.node.nodeId);

    possibleFailure.fold(
      (f) => NodeActorState.deleteFailure(f),
      (_) => const NodeActorState.deleteSuccess(),
    );
  }
}
