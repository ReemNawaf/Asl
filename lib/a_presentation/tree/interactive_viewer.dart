import 'package:asl/a_presentation/tree/tree_view.dart';
import 'package:asl/b_application/node/node_actor/node_actor_bloc.dart';
import 'package:asl/b_application/node/node_watcher/node_watcher_bloc.dart';
import 'package:asl/b_application/tree/tree_actor/tree_actor_bloc.dart';
import 'package:asl/b_application/tree/tree_draw/tree_draw_bloc.dart';
import 'package:asl/b_application/tree/tree_watcher/tree_watcher_bloc.dart';
import 'package:asl/c_domain/core/value_objects.dart';
import 'package:asl/injection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class InteractiveView extends StatelessWidget {
  const InteractiveView({super.key, required this.treeId});
  final UniqueId treeId;

  @override
  Widget build(BuildContext context) {
    // Getting Tree from treeId Provider => Bloc
    return BlocProvider<TreeWatcherBloc>(
      create: (context) =>
          getIt<TreeWatcherBloc>()..add(TreeWatcherEvent.getTree(treeId)),
      child: BlocBuilder<TreeWatcherBloc, TreeWatcherState>(
        builder: (context, state) {
          return state.map(
            gettingTreeSuccess: (state) {
              return MultiBlocProvider(
                providers: [
                  // Getting the Nodes from Tree Provider => Bloc
                  BlocProvider<TreeActorBloc>(
                    create: (context) => getIt<TreeActorBloc>(),
                  ),

                  BlocProvider<NodeActorBloc>(
                    create: (context) => getIt<NodeActorBloc>(),
                  ),

                  BlocProvider<NodeActorBloc>(
                    create: (context) => getIt<NodeActorBloc>(),
                  ),
                ],
                child: BlocProvider(
                  create: (context) => getIt<NodeWatcherBloc>()
                    ..add(NodeWatcherEvent.watchAllStarted(state.tree)),
                  child: BlocBuilder<NodeWatcherBloc, NodeWatcherState>(
                    builder: (context, state) {
                      return state.map(
                        loadSuccess: (state) {
                          //  Getting Tree & its Nodes, Draw the Tree
                          return BlocProvider(
                            create: (context) => getIt<TreeDrawBloc>()
                              ..add(TreeDrawEvent.drawTree(
                                  state.tree, state.nodes)),
                            child: InteractiveViewer(
                              constrained: false,
                              alignment: Alignment.center,
                              boundaryMargin: const EdgeInsets.all(100),
                              minScale: 0.01,
                              maxScale: 5.6,
                              child: const TreeView(),
                            ),
                          );
                        },
                        initial: (_) => const SizedBox(),
                        loadInProgress: (_) =>
                            const SizedBox(child: Text('02')),
                        inProgress: (_) => const SizedBox(),
                        loadFailure: (_) => const SizedBox(),
                        gettingNodeSuccess: (_) => const SizedBox(),
                        gettingNodeFailure: (_) => const SizedBox(),
                      );
                    },
                  ),
                ),
              );
            },
            initial: (_) => const SizedBox(),
            loadInProgress: (_) => const SizedBox(),
            inProgress: (_) => const SizedBox(child: Text('3')),
            loadSuccess: (_) => const SizedBox(),
            loadFailure: (_) => const SizedBox(),
            gettingTreeFailure: (_) => const SizedBox(),
          );
        },
      ),
    );
  }
}
