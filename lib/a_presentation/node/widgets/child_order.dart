import 'package:asl/a_presentation/a_shared/app_colors.dart';
import 'package:asl/a_presentation/a_shared/box_dec.dart';
import 'package:asl/a_presentation/a_shared/constants.dart';
import 'package:asl/a_presentation/a_shared/text_styles.dart';
import 'package:asl/b_application/local_tree_bloc/local_tree_bloc.dart';
import 'package:asl/b_application/node_bloc/node_form/node_form_bloc.dart';
import 'package:asl/c_domain/node/t_node.dart';
import 'package:asl/localization/localization_constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ChildPartner extends StatelessWidget {
  const ChildPartner({
    super.key,
    required this.node,
    required this.state,
    required this.treeState,
  });

  final TNode node;
  final NodeFormState state;
  final LocalTreeState treeState;

  @override
  Widget build(BuildContext context) {
    final siblings = treeState.store
        .childrenIdsOfRelationKey(node.upperFamily?.getOrCrash() ?? '');
    final siblingsList = List.generate(siblings.length, (index) => index + 1);

    final siblingsOrderItems = siblingsList
        .map((int i) => DropdownMenuItem<int>(
              value: i - 1,
              child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 40),
                  width: 120,
                  child: Text(i.toString())),
            ))
        .toList();

    return Row(
      children: [
        Text(node.gender == Gender.male
            ? getTr(context, 'order_in_the_family_male')!
            : getTr(context, 'order_in_the_family_female')!),
        kHSpacer5,
        Container(
          decoration: kAppFormsDecor,
          height: kTextFieldHeight,
          width: 150,
          child: DropdownButton<int>(
            items: siblingsOrderItems,
            isExpanded: false,
            value:
                state.childOrder ?? siblings.indexOf(node.nodeId.getOrCrash()),
            onChanged: state.isEditing
                ? (value) {
                    context
                        .read<NodeFormBloc>()
                        .add(NodeFormEvent.changeChildOrder(value ?? 0));
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
        kHSpacer20
      ],
    );
  }
}
