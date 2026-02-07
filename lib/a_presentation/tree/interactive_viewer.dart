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
          listener: (context, state) {
            // Use post-frame callback to ensure layout is complete
            WidgetsBinding.instance.addPostFrameCallback((_) {
              final drawTreeBloc = context.read<DrawTreeBloc>();
              final controller = drawTreeBloc.state.controller;
              final viewerKey = drawTreeBloc.state.viewerKey;

              // Get the viewer context to calculate viewport center
              final viewerContext = viewerKey.currentContext;
              if (viewerContext == null) {
                // Fallback: scale from origin if context not available
                controller.value = Matrix4.identity()..scale(state.zoomScale);
                return;
              }

              final viewerBox = viewerContext.findRenderObject() as RenderBox?;
              if (viewerBox == null || !viewerBox.hasSize) {
                // Fallback: scale from origin if box not available
                controller.value = Matrix4.identity()..scale(state.zoomScale);
                return;
              }

              // Get viewport center
              final viewportCenter = viewerBox.size.center(Offset.zero);

              // Convert viewport center to scene coordinates using current transform
              final scenePoint = controller.toScene(viewportCenter);

              // Calculate the new translation to keep the scene point at viewport center
              // Formula: newTranslation = viewportCenter - (scenePoint * newScale)
              final newTranslationX =
                  viewportCenter.dx - (scenePoint.dx * state.zoomScale);
              final newTranslationY =
                  viewportCenter.dy - (scenePoint.dy * state.zoomScale);

              // Create new transform: translate first, then scale
              controller.value = Matrix4.identity()
                ..translate(newTranslationX, newTranslationY)
                ..scale(state.zoomScale);
            });
          },
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
              boundaryMargin:
                  const EdgeInsets.symmetric(horizontal: 90000, vertical: 5000),
              minScale: MIN_ZOOM,
              maxScale: MAX_ZOOM,
              child: const TreeView(),
            ),
          ),
        );
      },
    );
  }
}
