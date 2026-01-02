import 'package:asl/a_presentation/a_shared/constants.dart';
import 'package:asl/a_presentation/a_shared/text_styles.dart';
import 'package:asl/localization/localization_constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class GenderWidget extends StatelessWidget {
  const GenderWidget({
    super.key,
    required this.color,
    required this.gender,
    required this.femaleOrMale,
    required this.isEditing,
  });

  final MaterialColor color;
  final Gender gender;
  final bool isEditing;
  final void Function({required bool isFemaleSelected}) femaleOrMale;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(getTr(context, 'gender')!, style: kFootnoteStyle),
        kVSpacer5,
        Row(
          children: [
            GendeMinButton(
              isEditing: isEditing,
              onTap: () =>
                  isEditing ? femaleOrMale(isFemaleSelected: true) : {},
              color: color,
              text: getTr(context, 'female')!,
              gender: Gender.female,
              selected: Gender.female == gender,
            ),
            const SizedBox(width: 16.0),
            GendeMinButton(
              isEditing: isEditing,
              onTap: () =>
                  isEditing ? femaleOrMale(isFemaleSelected: false) : {},
              color: color,
              text: getTr(context, 'male')!,
              gender: Gender.male,
              selected: Gender.male == gender,
            ),
          ],
        ),
      ],
    );
  }
}

class GendeMinButton extends StatelessWidget {
  const GendeMinButton({
    super.key,
    required this.color,
    required this.text,
    required this.gender,
    required this.selected,
    required this.onTap,
    required this.isEditing,
  });

  final MaterialColor color;
  final String text;
  final Gender gender;
  final bool selected;
  final Function() onTap;
  final bool isEditing;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: isEditing ? SystemMouseCursors.click : SystemMouseCursors.basic,
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 6.0),
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: selected ? color[300] : color[600],
            borderRadius: BorderRadius.circular(8.0),
          ),
          height: 36,
          width: 94,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SvgPicture.asset('assets/icons/${gender.name}.svg', height: 22),
              Text(text),
            ],
          ),
        ),
      ),
    );
  }
}
