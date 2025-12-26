import 'package:asl/a_presentation/a_shared/constants.dart';
import 'package:asl/a_presentation/tree/tree_view.dart';
import 'package:asl/b_application/local_tree_bloc/local_tree_bloc.dart';
import 'package:asl/b_application/tree_bloc/draw_tree/draw_tree_bloc.dart';
import 'package:asl/b_application/tree_bloc/tree_settings/tree_settings_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class InteractiveView extends StatelessWidget {
  InteractiveView({super.key});

  final TransformationController _controller = TransformationController();

  void drawTree(
    LocalTreeState state,
  ) {
    // debugPrint('LOG | root with ${state.root.relations.length} relations');
    // root = state.root;
    // context.read<DrawTreeBloc>().add(
    //       DrawTreeEvent.drawNewTree(
    //         tree: context.read<CurrentTreeBloc>().state.currentTree!,
    //         root: state.root,
    //         maxGenerations: NUM_GEN_OPTIONS[context
    //             .read<TreeSettingsBloc>()
    //             .state
    //             .numberOfGenerations]['number'],
    //         isShowUnknown: context.read<TreeSettingsBloc>().state.showUnknown,
    //         context: context,
    //       ),
    //     );
  }
  @override
  Widget build(BuildContext context) {
    debugPrint('LOG | InteractiveView: rebuild with new tree nodes');
    return BlocBuilder<LocalTreeBloc, LocalTreeState>(
      builder: (context, treeState) {
        if (treeState.focusRootId != null) {
          print('--- DRAWing ${treeState.focusRootId}');
          context.read<DrawTreeBloc>().add(
                DrawTreeEvent.drawNewTree(
                  store: treeState.store,
                  rootId: treeState.focusRootId!,
                  maxGenerations:
                      //TODO: check settings null
                      NUM_GEN_OPTIONS[treeState.settings!.numberOfGenerationOpt]
                          ['number'],
                  context: context,
                ),
              );
        }
        return BlocListener<TreeSettingsBloc, TreeSettingsState>(
          listener: (context, state) {
            _controller.value = Matrix4.identity()..scale(state.zoomScale);

            // _controller.value = Matrix4.identity()..scale(0.6);
            // debugPrint(
            //     'LOG | InteractiveView: rebuild after NodeWatcherBloc state changes');
          },
          child: BlocListener<TreeSettingsBloc, TreeSettingsState>(
            listenWhen: (prev, curr) =>
                prev.numberOfGenerations != curr.numberOfGenerations,
            listener: (context, state) {
              if (treeState.focusRootId != null) {
                print('--- DRAWing ${treeState.focusRootId}');
                context.read<DrawTreeBloc>().add(
                      DrawTreeEvent.drawNewTree(
                        store: treeState.store,
                        rootId: treeState.focusRootId!,
                        maxGenerations:
                            NUM_GEN_OPTIONS[state.numberOfGenerations]
                                ['number'],
                        context: context,
                      ),
                    );
              }
            },
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
    );
  }
}
