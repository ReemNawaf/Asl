import 'package:asl/a_presentation/a_shared/app_colors.dart';
import 'package:asl/a_presentation/a_shared/constants.dart';
import 'package:asl/a_presentation/node/node_card/app_node.dart';
import 'package:asl/c_domain/node/t_node.dart';
import 'package:flutter/material.dart';

class UnknownPartnerNode extends StatelessWidget {
  const UnknownPartnerNode({
    super.key,
    required this.pageContext,
    required this.node,
  });

  final BuildContext pageContext;
  final TNode node;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    const color = kOutColors;
    return SizedBox(
      height: 175,
      width: 250,
      child: Stack(
        alignment: Alignment.center,
        children: [
          SizedBox(
            height: 250,
            child: VerticalDivider(
              thickness: 2,
              color: kBlacksColor[300]!,
              indent: 90,
              endIndent: 0,
            ),
          ),
          Container(
            height: 30,
            width: 30,
            decoration: BoxDecoration(
              color: color[500]!,
              borderRadius: BorderRadius.circular(40),
              border: Border.all(color: kBlacksColor[300]!, width: 2),
            ),
            alignment: Alignment.center,
            child: MouseRegion(
              cursor: SystemMouseCursors.click,
              child: GestureDetector(
                onTap: () => showPanel(
                  pageContext,
                  size,
                  color,
                  false,
                  node,
                  NodeType.partner,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
