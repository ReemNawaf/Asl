import 'package:asl/b_application/local_tree_bloc/local_tree_bloc.dart';
import 'package:asl/b_application/node_bloc/node_form/node_form_bloc.dart';
import 'package:asl/c_domain/core/value_objects.dart';
import 'package:asl/c_domain/node/t_node.dart';
import 'package:asl/localization/localization_constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NodeGroupWidget extends StatelessWidget {
  const NodeGroupWidget({
    super.key,
    required this.node,
    required this.groupId,
    required this.isEditing,
  });

  final TNode? node;
  final UniqueId? groupId;
  final bool isEditing;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LocalTreeBloc, LocalTreeState>(
      builder: (context, treeState) {
        final groups = treeState.settings?.groups ?? [];
        if (groups.isEmpty) return const SizedBox.shrink();

        final gid = groupId?.getOrCrash();
        final validIds = groups.map((g) => g.id.getOrCrash()).toSet();
        final selected = gid != null && validIds.contains(gid) ? gid : null;

        return Padding(
          padding: const EdgeInsets.only(top: 16.0),
          child: SizedBox(
            width: 250,
            child: DropdownButtonFormField<String?>(
              value: selected,
              isExpanded: true,
              decoration: InputDecoration(
                labelText: getTr(context, 'tree_group_membership'),
                isDense: true,
              ),
              items: [
                DropdownMenuItem<String?>(
                  value: null,
                  child: Text(getTr(context, 'tree_group_none')!),
                ),
                ...groups.map(
                  (g) => DropdownMenuItem<String?>(
                    value: g.id.getOrCrash(),
                    child: Text(
                      g.name,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ),
              ],
              onChanged: isEditing
                  ? (v) {
                      context.read<NodeFormBloc>().add(
                            NodeFormEvent.groupIdChanged(
                              v == null ? null : UniqueId.fromUniqueString(v),
                            ),
                          );
                    }
                  : null,
            ),
          ),
        );
      },
    );
  }
}
