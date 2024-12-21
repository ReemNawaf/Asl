import 'package:asl/a_presentation/a_shared/app_colors.dart';
import 'package:asl/a_presentation/a_shared/text_styles.dart';
import 'package:asl/a_presentation/tree/widgets/add_new_tree.dart';
import 'package:asl/b_application/node_bloc/node_watcher/node_watcher_bloc.dart';
import 'package:asl/b_application/share_bloc/share_option/share_option_bloc.dart';
import 'package:asl/b_application/tree_bloc/current_tree/current_tree_bloc.dart';
import 'package:asl/c_domain/tree/tree.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TreeList extends StatelessWidget {
  const TreeList({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CurrentTreeBloc, CurrentTreeState>(
      builder: (context, state) {
        print('TreeList: rebuild after CurrentTreeBloc state changes');
        var currentTree = state.currentTree;
        final trees = state.trees;
        if (trees.isNotEmpty && currentTree != null) {
          final menuItems = trees
              .map((Tree tree) => DropdownMenuItem<String>(
                    value: tree.treeId.getOrCrash(),
                    child: ListTreeItem(
                        treeName: tree.treeName.getOrCrash(),
                        rootLetter: tree.fullName.getOrCrash().substring(0, 1)),
                  ))
              .toList();
          menuItems.add(const DropdownMenuItem<String>(
            value: 'add_new',
            child: Text('Add new Tree'),
          ));
          return DropdownButton(
            items: menuItems,
            isExpanded: true,
            value: currentTree.treeId.getOrCrash(),
            onChanged: (String? value) {
              if (value == 'add_new') {
                showNewTreePanel(context);
              } else {
                final t = trees
                    .firstWhere((tree) => tree.treeId.getOrCrash() == value);

                //  (1) Update the Tree
                //  1. Update the current tree
                context
                    .read<CurrentTreeBloc>()
                    .add(CurrentTreeEvent.updated(currentTree: t));

                //  2. Update the current nodes
                context
                    .read<NodeWatcherBloc>()
                    .add(NodeWatcherEvent.watchAllStarted(t));

                //  3. Update the share settings
                context
                    .read<ShareOptionBloc>()
                    .add(ShareOptionEvent.initialized(t.shareOption ?? 0));
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
    );
  }
}

class ListTreeItem extends StatelessWidget {
  final String treeName;
  final String rootLetter;
  const ListTreeItem({
    super.key,
    required this.treeName,
    required this.rootLetter,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
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
    );
  }
}
