import 'dart:async';
import 'package:asl/c_domain/core/value_objects.dart';
import 'package:asl/c_domain/node/i_node_repository.dart';
import 'package:asl/c_domain/node/t_node.dart';
import 'package:asl/c_domain/node/t_node_failure.dart';
import 'package:asl/c_domain/tree/tree.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'node_watcher_event.dart';
part 'node_watcher_state.dart';
part 'node_watcher_bloc.freezed.dart';

@injectable
class NodeWatcherBloc extends Bloc<NodeWatcherEvent, NodeWatcherState> {
  // link it to domain layer
  // inject the instance
  final INodeRepository _nodeRepository;

  NodeWatcherBloc(this._nodeRepository)
      : super(const NodeWatcherState.initial()) {
    on<NodeWatcherEvent>(mapEventToState);
  }

  Future<void> mapEventToState(
    NodeWatcherEvent event,
    Emitter<NodeWatcherState> emit,
  ) async {
    await event.map(
      getTree: (e) async {
        emit(const NodeWatcherState.loadInProgress());

        emit((await _nodeRepository.getTree(e.tree.treeId)).fold(
          (f) => NodeWatcherState.loadFailure(f),
          (root) {
            return NodeWatcherState.loadSuccess(root: root);
          },
        ));
      },
      getNode: (e) async {
        emit(const NodeWatcherState.inProgress());
        final possibleFailure =
            await _nodeRepository.getNode(nodeId: e.nodeId, treeId: e.treeId);
        emit(possibleFailure.fold(
          (f) => NodeWatcherState.gettingNodeFailure(f),
          (node) => NodeWatcherState.gettingNodeSuccess(node),
        ));
      },
    );
  }
}
