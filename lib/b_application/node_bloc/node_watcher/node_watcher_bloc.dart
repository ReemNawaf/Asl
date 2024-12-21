import 'dart:async';
import 'package:asl/c_domain/core/value_objects.dart';
import 'package:asl/c_domain/node/i_node_repository.dart';
import 'package:asl/c_domain/node/t_node.dart';
import 'package:asl/c_domain/node/t_node_failure.dart';
import 'package:asl/c_domain/tree/tree.dart';
import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
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

  StreamSubscription<Either<TNodeFailure, List<TNode>>>?
      _nodeStreamSubscription;

  Future<void> mapEventToState(
    NodeWatcherEvent event,
    Emitter<NodeWatcherState> emit,
  ) async {
    await event.map(
      watchAllStarted: (e) async {
        print('---------- ************* | watchAllStarted');
        emit(const NodeWatcherState.loadInProgress());

        _nodeStreamSubscription = _nodeRepository
            .watchAll(e.tree.treeId)
            .listen(
              (failureOrNodes) =>
                  add(NodeWatcherEvent.nodesReceived(failureOrNodes, e.tree)),
            );
      },
      nodesReceived: (e) async {
        emit(e.failureOrNodes.fold(
          (f) => NodeWatcherState.loadFailure(f),
          (nodes) {
            print('nodesReceived: get the nodes $nodes');
            return NodeWatcherState.loadSuccess(tree: e.tree, nodes: nodes);
          },
        ));
      },
      getNode: (e) async {
        const NodeWatcherState.inProgress();
        final possibleFailure =
            await _nodeRepository.getNode(nodeId: e.nodeId, treeId: e.treeId);
        emit(possibleFailure.fold(
          (f) => NodeWatcherState.gettingNodeFailure(f),
          (node) => NodeWatcherState.gettingNodeSuccess(node),
        ));
      },
    );
  }

  @override
  Future<void> close() async {
    await _nodeStreamSubscription?.cancel();

    return super.close();
  }
}
