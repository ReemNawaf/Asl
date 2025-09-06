import 'package:asl/a_presentation/core/widgets/loading_wdg.dart';
import 'package:asl/a_presentation/tree/tree_view.dart';
import 'package:asl/b_application/node_bloc/node_watcher/node_watcher_bloc.dart';
import 'package:asl/b_application/tree_bloc/current_tree/current_tree_bloc.dart';
import 'package:asl/b_application/tree_bloc/draw_tree/draw_tree_bloc.dart';
import 'package:asl/b_application/tree_bloc/zoom_tree/zoom_tree_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class InteractiveView extends StatelessWidget {
  InteractiveView({super.key});

  final TransformationController _controller = TransformationController();

  @override
  Widget build(BuildContext context) {
    return BlocListener<NodeWatcherBloc, NodeWatcherState>(
      listener: (_, state) {
        state.map(
          initial: (_) {},
          loadInProgress: (_) {},
          inProgress: (_) {},
          loadSuccess: (state) {
            print('LOG | root with ${state.root.relations.length} relations');
            context.read<DrawTreeBloc>().add(
                  DrawTreeEvent.drawNewTree(
                    tree: context.read<CurrentTreeBloc>().state.currentTree!,
                    root: state.root,
                  ),
                );
          },
          loadFailure: (_) {},
          gettingNodeSuccess: (_) {},
          gettingNodeFailure: (_) {},
        );
      },
      child: BlocBuilder<NodeWatcherBloc, NodeWatcherState>(
        builder: (context, nState) {
          _controller.value = Matrix4.identity()..scale(0.6);
          print(
              'LOG | InteractiveView: rebuild after NodeWatcherBloc state changes');
          return nState.map(
            initial: (_) => const SizedBox(),
            loadInProgress: (_) => const LoadingWidget(),
            inProgress: (_) => const LoadingWidget(),
            loadSuccess: (nState) {
              print('LOG | InteractiveView: rebuild with new tree nodes');

              return BlocListener<ZoomTreeBloc, ZoomTreeState>(
                listener: (context, state) {
                  _controller.value = Matrix4.identity()..scale(state.scale);
                },
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: InteractiveViewer(
                      constrained: false,
                      transformationController: _controller,
                      alignment: Alignment.center,
                      boundaryMargin: const EdgeInsets.all(1000),
                      minScale: MIN_ZOOM,
                      maxScale: MAX_ZOOM,
                      child: const TreeView()),
                ),
              );
            },
            loadFailure: (_) => const SizedBox(),
            gettingNodeSuccess: (_) => const SizedBox(),
            gettingNodeFailure: (_) => const SizedBox(),
          );
        },
      ),
    );
  }
}
