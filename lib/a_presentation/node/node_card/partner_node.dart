import 'package:asl/a_presentation/a_shared/app_colors.dart';
import 'package:asl/a_presentation/a_shared/constants.dart';
import 'package:asl/a_presentation/node/node_card/app_node.dart';
import 'package:asl/c_domain/node/t_node.dart';
import 'package:flutter/material.dart';

class PartnerNode extends StatelessWidget {
  const PartnerNode({
    super.key,
    required this.node,
    required this.pageContext,
    // this.image,
  });
  final TNode node;
  final BuildContext pageContext;
  // final String? image;

  @override
  Widget build(BuildContext context) {
    return AppNode(
      type: NodeType.root,
      name: node.firstName.getOrCrash(),
      relation: node.gender == Gender.female ? 'زوجة' : 'زوج',
      color: kOutColors,
      yearOfBirth: node.birthDate,
      yearOfDeath: node.deathDate,
      isAlive: node.isAlive,
      hasImage: true,
      gender: node.gender,
      node: node,
      pageContext: pageContext,
      //image: image,
    );
  }
}
