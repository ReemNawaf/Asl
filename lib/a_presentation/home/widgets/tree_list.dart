import 'package:asl/a_presentation/a_shared/app_colors.dart';
import 'package:asl/a_presentation/a_shared/text_styles.dart';
import 'package:asl/a_presentation/tree/widgets/add_new_tree.dart';
import 'package:asl/a_presentation/tree/widgets/delete_tree.dart';
import 'package:asl/b_application/local_tree_bloc/local_tree_bloc.dart';
import 'package:asl/c_domain/core/value_objects.dart';
import 'package:asl/c_domain/tree/tree.dart';
import 'package:asl/localization/localization_constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TreeList extends StatelessWidget {
  const TreeList({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LocalTreeBloc, LocalTreeState>(
      builder: (context, state) {
        final trees = state.trees;

        if (trees.isNotEmpty) {
          final menuItems = trees
              .map(
                (Tree tree) => DropdownMenuItem<String>(
                  value: tree.treeId.getOrCrash(),
                  child: ListTreeItem(
                    id: tree.treeId,
                    treeName: tree.treeName.getOrCrash(),
                    rootLetter: tree.fullName.getOrCrash().substring(0, 1),
                  ),
                ),
              )
              .toList();
          menuItems.add(DropdownMenuItem<String>(
            value: 'add_new',
            child: Text(getTr(context, 'add_family_tree')!),
          ));

          debugPrint('LOG | TreeList: menuItems.length: ${menuItems.length}');
          return DropdownButton(
            items: menuItems,
            isExpanded: true,
            value: state.selectedTreeId!.getOrCrash(),
            onChanged: (String? value) {
              if (value == 'add_new') {
                showNewTreePanel(context);
              } else {
                final t = trees
                    .firstWhere((tree) => tree.treeId.getOrCrash() == value);

                // Update the local tree
                context.read<LocalTreeBloc>().add(LocalTreeEvent.selectTree(
                    treeId: t.treeId, rootId: t.rootId));
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
      onLongPress: () => showDeleteTreePanel(context, id: id),
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
