import 'package:asl/a_presentation/a_shared/app_colors.dart';
import 'package:asl/a_presentation/a_shared/box_dec.dart';
import 'package:asl/a_presentation/a_shared/constants.dart';
import 'package:asl/a_presentation/a_shared/text_styles.dart';
import 'package:asl/a_presentation/core/widgets/drop_down_item.dart';
import 'package:asl/b_application/local_tree_bloc/local_tree_bloc.dart';
import 'package:asl/b_application/node_bloc/node_form/node_form_bloc.dart';
import 'package:asl/c_domain/core/value_objects.dart';
import 'package:asl/c_domain/node/t_node.dart';
import 'package:asl/c_domain/tree/tree_group.dart';
import 'package:asl/localization/localization_constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NodeGroupField extends StatelessWidget {
  const NodeGroupField({
    super.key,
    required this.node,
    required this.isEditing,
  });

  final TNode? node;
  final bool isEditing;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LocalTreeBloc, LocalTreeState>(
      builder: (context, state) {
        final groups = state.settings?.groups ?? [];
        if (groups.isEmpty) return const SizedBox.shrink();
        final node = context.read<NodeFormBloc>().state.node;
        final gid = node?.groupId?.getOrCrash();
        final validIds = groups.map((g) => g.id.getOrCrash()).toSet();
        final selected = gid != null && validIds.contains(gid) ? gid : null;

        final menuItems = <DropdownMenuItem<String?>>[
          DropdownMenuItem<String?>(
            value: null,
            child: Text(
              getTr(context, 'tree_group_none')!,
              style: kBodyMedium,
            ),
          ),
          ...groups.map(
            (TreeGroup g) => DropdownMenuItem<String?>(
              value: g.id.getOrCrash(),
              child: AppDropDownItem(
                label: g.name,
              ),
            ),
          ),
        ];

        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(getTr(context, 'tree_group_membership')!),
            kVSpacer5,
            Container(
              decoration: kAppFormsDecor,
              height: 35,
              width: 250,
              child: DropdownButton<String?>(
                items: menuItems,
                isExpanded: true,
                value: selected,
                onChanged: isEditing
                    ? (String? value) {
                        context.read<NodeFormBloc>().add(
                            NodeFormEvent.groupIdChanged(value != null
                                ? UniqueId.fromUniqueString(value)
                                : null));
                      }
                    : null,
                underline: const SizedBox(),
                icon: const Icon(Icons.expand_more_rounded),
                dropdownColor: kWhitesColor[600],
                borderRadius: BorderRadius.circular(kAppCircularRadius),
                style: kBodyMedium,
                elevation: 1,
                padding: EdgeInsets.zero,
              ),
            ),
          ],
        );
      },
    );
  }
}
