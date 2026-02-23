import 'package:asl/a_presentation/a_shared/constants.dart';
import 'package:asl/a_presentation/a_shared/text_styles.dart';
import 'package:asl/b_application/node_bloc/node_form/node_form_bloc.dart';
import 'package:asl/c_domain/node/t_node.dart';
import 'package:asl/localization/localization_constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LinkToExistingNode extends StatelessWidget {
  const LinkToExistingNode({
    super.key,
    required this.node,
    required this.color,
  });

  final TNode node;
  final MaterialColor color;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NodeFormBloc, NodeFormState>(
      builder: (context, state) {
        final isLinkToExistingNode = state.isLinkToExistingNode;

        return Row(
          children: [
            Text(
              isLinkToExistingNode
                  ? (node.gender == Gender.male
                      ? getTr(context, 'wife_is_not_in_the_tree')!
                      : getTr(context, 'husband_is_not_in_the_tree')!)
                  : (node.gender == Gender.male
                      ? getTr(context, 'wife_is_in_the_tree')!
                      : getTr(context, 'husband_is_in_the_tree')!),
              style: kFootnoteStyle.copyWith(
                  fontWeight: FontWeight.bold, wordSpacing: 2.0),
            ),
            kHSpacer5,
            MouseRegion(
              cursor: SystemMouseCursors.click,
              child: GestureDetector(
                onTap: isLinkToExistingNode
                    ? () => showLinkToExistingNode(context, false)
                    : () => showLinkToExistingNode(context, true),
                child: Text(
                  '${isLinkToExistingNode ? getTr(context, "add_new_member")! : getTr(context, 'add_with_id')!}.',
                  style: kFootnoteStyle.copyWith(
                    color: color,
                    fontWeight: FontWeight.bold,
                    wordSpacing: 2.0,
                  ),
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}

void showLinkToExistingNode(BuildContext context, bool isAdding) {
  context
      .read<NodeFormBloc>()
      .add(NodeFormEvent.showLinkToExistingNode(isAdding));
}
