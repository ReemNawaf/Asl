import 'package:asl/a_presentation/a_shared/app_colors.dart';
import 'package:asl/a_presentation/a_shared/fixed.dart';
import 'package:asl/a_presentation/widgets/node/app_node.dart';
import 'package:flutter/material.dart';

class ChildNode extends StatelessWidget {
  const ChildNode({
    super.key,
    required this.name,
    required this.yearOfBirth,
    required this.yearOfDeath,
    required this.isAlie,
    required this.gender,
    this.image,
  });
  final String name;
  final String yearOfBirth;
  final String yearOfDeath;
  final bool isAlie;
  final Gender gender;
  final String? image;

  @override
  Widget build(BuildContext context) {
    return AppNode(
      type: NodeType.child,
      name: name,
      relation: gender == Gender.female ? 'الابنة' : 'الابن',
      yearOfBirth: yearOfBirth,
      yearOfDeath: yearOfDeath,
      isAlie: isAlie,
      colorOne: kStemColors[600]!,
      colorTwo: kStemColors[300]!,
      colorThree: kStemColors[400]!,
      colorFour: kStemColors[500]!,
      colorFive: kBlacksColor[100]!,
      hasImage: true,
      image: image,
      gender: gender,
    );
  }
}
