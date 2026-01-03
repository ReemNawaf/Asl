import 'package:asl/a_presentation/a_shared/constants.dart';
import 'package:asl/a_presentation/tree/tree_view.dart';
import 'package:asl/b_application/local_tree_bloc/local_tree_bloc.dart';
import 'package:asl/b_application/tree_bloc/draw_tree/draw_tree_bloc.dart';
import 'package:asl/b_application/tree_bloc/tree_settings/tree_settings_bloc.dart';
import 'package:asl/c_domain/local_tree_views/tree_nav_helpers.dart';
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
          listener: (context, state) => zoomToScale(
              viewerKey: context.read<DrawTreeBloc>().state.viewerKey,
              controller: context.read<DrawTreeBloc>().state.controller,
              newScale: state.zoomScale),
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
            child: Expanded(
                child: ClipRect(
              child: SizedBox.expand(
                key: context.read<DrawTreeBloc>().state.viewerKey,
                child: InteractiveViewer(
                  key: context.read<DrawTreeBloc>().state.viewerKey,
                  constrained: false,
                  transformationController:
                      context.read<DrawTreeBloc>().state.controller,
                  alignment: Alignment.center,
                  boundaryMargin: const EdgeInsets.all(5000),
                  minScale: MIN_ZOOM,
                  maxScale: MAX_ZOOM,
                  child: const TreeView(),
                ),
              ),
            )),
          ),
        );
      },
    );
  }
}
