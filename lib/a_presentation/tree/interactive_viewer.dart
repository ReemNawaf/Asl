import 'package:asl/a_presentation/core/widgets/loading_wdg.dart';
import 'package:asl/a_presentation/tree/tree_view.dart';
import 'package:asl/b_application/node_bloc/node_watcher/node_watcher_bloc.dart';
import 'package:asl/b_application/tree_bloc/current_tree/current_tree_bloc.dart';
import 'package:asl/b_application/tree_bloc/draw_tree/draw_tree_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class InteractiveView extends StatelessWidget {
  const InteractiveView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NodeWatcherBloc, NodeWatcherState>(
      builder: (context, nState) {
        // print('InteractiveView: rebuild after NodeWatcherBloc state changes');
        return nState.map(
          initial: (_) => const SizedBox(),
          loadInProgress: (_) => const LoadingWidget(),
          inProgress: (_) => const LoadingWidget(),
          loadSuccess: (nState) {
            // print(
            //     '=========== InteractiveView: rebuild with new tree nodes ${nState.nodes}');

            return BlocBuilder<CurrentTreeBloc, CurrentTreeState>(
              builder: (context, state) {
                if (state.currentTree != null) {
                  context.read<DrawTreeBloc>().add(DrawTreeEvent.drawNewTree(
                        tree: state.currentTree!,
                        nodes: nState.nodes,
                      ));
                }

                return InteractiveViewer(
                  constrained: false,
                  alignment: Alignment.center,
                  boundaryMargin: const EdgeInsets.all(100),
                  minScale: 0.01,
                  maxScale: 5.6,
                  child: const TreeView(),
                );
              },
            );
          },
          loadFailure: (_) => const SizedBox(),
          gettingNodeSuccess: (_) => const SizedBox(),
          gettingNodeFailure: (_) => const SizedBox(),
        );
      },
    );
  }
}
