import 'package:asl/a_presentation/a_shared/constants.dart';
import 'package:asl/a_presentation/tree/tree_view.dart';
import 'package:asl/b_application/local_tree_bloc/local_tree_bloc.dart';
import 'package:asl/b_application/tree_bloc/draw_tree/draw_tree_bloc.dart';
import 'package:asl/b_application/tree_bloc/tree_settings/tree_settings_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class InteractiveView extends StatelessWidget {
  const InteractiveView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LocalTreeBloc, LocalTreeState>(
      builder: (context, treeState) {
        if (treeState.focusRootId != null) {
          debugPrint('DRAWING | ${treeState.focusRootId}');
          context.read<DrawTreeBloc>().add(
                DrawTreeEvent.drawNewTree(
                  store: treeState.store,
                  rootId: treeState.focusRootId!,
                  maxGenerations:
                      NUM_GEN_OPTIONS[treeState.settings!.numberOfGenerationOpt]
                          ['number'],
                  context: context,
                ),
              );
        }
        return BlocListener<TreeSettingsBloc, TreeSettingsState>(
          listener: (context, state) => context
              .read<DrawTreeBloc>()
              .state
              .controller
              .value = Matrix4.identity()..scale(state.zoomScale),
          child: BlocListener<TreeSettingsBloc, TreeSettingsState>(
            listenWhen: (prev, curr) =>
                prev.numberOfGenerations != curr.numberOfGenerations,
            listener: (context, state) {
              if (treeState.focusRootId != null) {
                debugPrint('DRAWING | ${treeState.focusRootId}');
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
                key: context.read<DrawTreeBloc>().state.viewerKey,
                constrained: false,
                transformationController:
                    context.read<DrawTreeBloc>().state.controller,
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
