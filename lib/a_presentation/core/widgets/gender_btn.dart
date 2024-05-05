import 'package:asl/a_presentation/a_shared/fixed.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class GenderBtn extends StatelessWidget {
  const GenderBtn({
    super.key,
    required this.color,
    required this.size,
  });

  final MaterialColor color;
  final Size size;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        GenderButton(
          color: color,
          size: size,
          text: 'ذكر',
          gender: Gender.male,
        ),
        const SizedBox(width: 16.0),
        GenderButton(
          color: color,
          size: size,
          text: 'أنثى',
          gender: Gender.female,
        ),
      ],
    );
  }
}

class GenderButton extends StatelessWidget {
  const GenderButton({
    super.key,
    required this.color,
    required this.size,
    required this.text,
    required this.gender,
  });

  final MaterialColor color;
  final Size size;
  final String text;
  final Gender gender;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 6.0),
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: color[600],
        borderRadius: BorderRadius.circular(8.0),
      ),
      height: size.height * 0.09,
      width: size.width * 0.04,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SvgPicture.asset('icons/${gender.name}.svg', height: 32),
          Text(text),
        ],
      ),
    );
  }
}
