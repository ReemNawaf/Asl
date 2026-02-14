import 'package:asl/a_presentation/a_shared/app_colors.dart';
import 'package:asl/a_presentation/a_shared/constants.dart';
import 'package:asl/a_presentation/node/node_card/app_node.dart';
import 'package:asl/c_domain/node/t_node.dart';
import 'package:flutter/material.dart';

class ChildNode extends StatelessWidget {
  const ChildNode({
    super.key,
    required this.node,
    required this.pageContext,
    required this.fatherName,
    // this.image,
  });
  final TNode node;
  final BuildContext pageContext;
  final String? fatherName;
  // final String? image;

  @override
  Widget build(BuildContext context) {
    return AppNode(
      type: NodeType.child,
      name: node.firstName.getOrCrash(),
      fatherName: fatherName,
      relation: node.gender == Gender.female ? 'الابنة' : 'الابن',
      color: kStemColors,
      yearOfBirth: node.birthDate,
      yearOfDeath: node.deathDate,
      isAlive: node.isAlive,
      hasImage: false,
      gender: node.gender,
      node: node,
      pageContext: pageContext,
    );
  }
}
