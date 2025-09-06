import 'package:asl/a_presentation/a_shared/app_colors.dart';
import 'package:asl/a_presentation/a_shared/text_styles.dart';
import 'package:asl/a_presentation/tree/widgets/add_new_tree.dart';
import 'package:asl/a_presentation/tree/widgets/delete_tree.dart';
import 'package:asl/b_application/node_bloc/node_watcher/node_watcher_bloc.dart';
import 'package:asl/b_application/share_bloc/share_option/share_option_bloc.dart';
import 'package:asl/b_application/tree_bloc/current_tree/current_tree_bloc.dart';
import 'package:asl/b_application/tree_bloc/tree_watcher/tree_watcher_bloc.dart';
import 'package:asl/c_domain/core/value_objects.dart';
import 'package:asl/c_domain/tree/tree.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TreeList extends StatelessWidget {
  const TreeList({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TreeWatcherBloc, TreeWatcherState>(
      builder: (context, state) {
        return state.map(
          initial: (_) => const SizedBox(),
          getAllTreesInProgress: (_) => const SizedBox(),
          getTreeInProgress: (_) => const SizedBox(),
          gettingAllTreesSuccess: (state) {
            return BlocProvider(
              create: (context) => CurrentTreeBloc()
                ..add(CurrentTreeEvent.updateAllTree(trees: state.trees)),
              child: BlocBuilder<CurrentTreeBloc, CurrentTreeState>(
                builder: (context, state) {
                  var currentTree = state.currentTree;
                  final trees = state.trees;

                  if (currentTree != null && trees.isNotEmpty) {
                    final menuItems = trees
                        .map((Tree tree) => DropdownMenuItem<String>(
                              value: tree.treeId.getOrCrash(),
                              child: ListTreeItem(
                                  id: tree.treeId,
                                  treeName: tree.treeName.getOrCrash(),
                                  rootLetter: tree.fullName
                                      .getOrCrash()
                                      .substring(0, 1)),
                            ))
                        .toList();
                    menuItems.add(const DropdownMenuItem<String>(
                      value: 'add_new',
                      child: Text('إضافة شجرة عائلة'),
                    ));

                    print(
                        'TreeList: menuItems.length: ${menuItems.length} |----------');
                    return DropdownButton(
                      items: menuItems,
                      isExpanded: true,
                      value: currentTree.treeId.getOrCrash(),
                      onChanged: (String? value) {
                        if (value == 'add_new') {
                          showNewTreePanel(context);
                        } else {
                          final t = trees.firstWhere(
                              (tree) => tree.treeId.getOrCrash() == value);

                          //  (1) Update the Tree
                          //  1. Update the current tree
                          context
                              .read<CurrentTreeBloc>()
                              .add(CurrentTreeEvent.updated(currentTree: t));

                          //  2. Update the current nodes
                          context
                              .read<NodeWatcherBloc>()
                              .add(NodeWatcherEvent.getTree(
                                treeId: t.rootId,
                                rootId: t.rootId,
                              ));

                          //  3. Update the share settings
                          context.read<ShareOptionBloc>().add(
                              ShareOptionEvent.initialized(t.shareOption ?? 0));
                        }
                      },
                      underline: const SizedBox(),
                      icon: const Icon(Icons.expand_more_rounded),
                      dropdownColor: kWhitesColor[600],
                      style: kBodyMedium,
                      elevation: 1,
                      padding: EdgeInsets.zero,
                    );
                  } else {
                    return const SizedBox();
                  }
                },
              ),
            );
          },
          gettingAllTreesFailure: (_) => const SizedBox(),
          gettingTreeSuccess: (_) => const SizedBox(),
          gettingTreeFailure: (_) => const SizedBox(),
        );
      },
    );
  }
}

class ListTreeItem extends StatelessWidget {
  final String treeName;
  final String rootLetter;
  final UniqueId id;
  const ListTreeItem({
    super.key,
    required this.treeName,
    required this.rootLetter,
    required this.id,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onLongPress: () {
        showDeleteTreePanel(context, id: id);
      },
      child: Row(
        children: [
          Container(
            height: 32.0,
            width: 32.0,
            decoration: BoxDecoration(
              color: kRootColors[600],
              borderRadius: BorderRadius.circular(4),
            ),
            child: Center(
              child: Text(
                rootLetter,
                style: kBodyMedium.copyWith(
                  color: kRootColors[200],
                ),
              ),
            ),
          ),
          const SizedBox(width: 12.0),
          Text(
            treeName,
            style: kBodyMedium,
            overflow: TextOverflow.ellipsis,
            maxLines: 1,
          ),
        ],
      ),
    );
  }
}
