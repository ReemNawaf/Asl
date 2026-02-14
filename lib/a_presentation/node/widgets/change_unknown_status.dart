import 'package:asl/a_presentation/a_shared/constants.dart';
import 'package:asl/a_presentation/a_shared/text_styles.dart';
import 'package:asl/b_application/node_bloc/node_form/node_form_bloc.dart';
import 'package:asl/c_domain/node/t_node.dart';
import 'package:asl/localization/localization_constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ChangeUnknownStatus extends StatelessWidget {
  const ChangeUnknownStatus({
    super.key,
    required this.node,
    required this.color,
  });

  final TNode node;
  final MaterialColor color;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          node.isUnknown
              ? (node.gender == Gender.male
                  ? getTr(context, 'known_partner_name_male')!
                  : getTr(context, 'known_partner_name_female')!)
              : (node.gender == Gender.male
                  ? getTr(context, 'unknown_partner_name_male')!
                  : getTr(context, 'unknown_partner_name_female')!),
          style: kFootnoteStyle.copyWith(
              fontWeight: FontWeight.bold, wordSpacing: 2.0),
        ),
        kHSpacer5,
        MouseRegion(
          cursor: SystemMouseCursors.click,
          child: GestureDetector(
            onTap: () => context
                .read<NodeFormBloc>()
                .add(NodeFormEvent.changeIsUnknown(!node.isUnknown)),
            child: Text(
              '${node.isUnknown ? getTr(context, "add_known_partner")! : getTr(context, 'add_unknown_partner')!}.',
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
  }
}
