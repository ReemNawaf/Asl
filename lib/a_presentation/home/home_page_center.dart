import 'package:asl/a_presentation/core/widgets/des_loading_wdg.dart';
import 'package:asl/a_presentation/home/widgets/network_error_wdg.dart';
import 'package:asl/a_presentation/tree/interactive_viewer.dart';
import 'package:asl/a_presentation/tree/widgets/add_new_tree.dart';
import 'package:asl/b_application/local_tree_bloc/local_tree_bloc.dart';
import 'package:asl/b_application/tree_bloc/tree_settings/tree_settings_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePageCenter extends StatelessWidget {
  const HomePageCenter({
    super.key,
    required this.size,
    required this.state,
  });

  final Size size;
  final TreeSettingsState state;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: size.width * (state.hideSidbar ? 0.82 : 0.82),
      child: BlocBuilder<LocalTreeBloc, LocalTreeState>(
        builder: (context, state) {
          context
              .read<TreeSettingsBloc>()
              .add(TreeSettingsEvent.initialized(state.settings));

          // when there is a network error
          if (state.treeFailureOption.isSome()) {
            return NetworkError(state: state);
          }
          // when loading all trees
          else if (state.isLoadingTrees) {
            return const DescriptiveLoadingWidget(
              loading: TreeDisplayLoading.LoadAllTree,
            );
          }
          // when loading a tree nodes
          else if (state.isLoadingTree) {
            return const DescriptiveLoadingWidget(
                loading: TreeDisplayLoading.LoadTreeNode);
          }
          // when the trees are loaded
          else if (state.trees.isNotEmpty) {
            // when no tree is selected, select the first tree
            if (state.selectedTreeId == null) {
              final t = state.trees.first;
              context.read<LocalTreeBloc>().add(LocalTreeEvent.selectTree(
                  treeId: t.treeId, rootId: t.rootId));
            }
            // when the trees are loaded and a tree is selected, show the interactive view
            return const InteractiveView();
          }
          //
          else {
            return Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  AddNewTree(size: size),
                ],
              ),
            );
          }
        },
      ),
    );
  }
}
