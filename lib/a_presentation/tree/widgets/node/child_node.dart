import 'package:asl/a_presentation/a_shared/app_colors.dart';
import 'package:asl/a_presentation/a_shared/constants.dart';
import 'package:asl/a_presentation/tree/widgets/node/app_node.dart';
import 'package:asl/c_domain/node/t_node.dart';
import 'package:flutter/material.dart';

class ChildNode extends StatelessWidget {
  const ChildNode({
    super.key,
    required this.node,
    // this.image,
  });
  final TNode node;
  // final String? image;

  @override
  Widget build(BuildContext context) {
    return AppNode(
      type: NodeType.root,
      name: node.firstName.getOrCrash(),
      relation: node.gender == Gender.female ? 'الابنة' : 'الابن',
      color: kStemColors,
      yearOfBirth: node.birthDate,
      yearOfDeath: node.deathDate,
      isAlive: node.isAlive,
      hasImage: true,
      gender: node.gender,
      node: node,
      //image: image,
    );
  }
}
