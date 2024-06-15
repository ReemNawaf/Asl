import 'package:asl/a_presentation/a_shared/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class GenderBtn extends StatefulWidget {
  const GenderBtn({
    super.key,
    required this.color,
    required this.size,
  });

  final MaterialColor color;
  final Size size;

  @override
  State<GenderBtn> createState() => _GenderBtnState();
}

class _GenderBtnState extends State<GenderBtn> {
  var isMale = true;

  @override
  Widget build(BuildContext context) {
    void maleOrFemale({required bool isMaleSelected}) {
      setState(() {
        if (isMaleSelected == true) {
          isMale = true;
        } else {
          isMale = false;
        }
      });
    }

    return Padding(
      padding: const EdgeInsets.only(top: 24.0),
      child: Row(
        children: [
          GenderButton(
            onTap: () => maleOrFemale(isMaleSelected: true),
            color: widget.color,
            size: widget.size,
            text: 'ذكر',
            gender: Gender.male,
            selected: isMale,
          ),
          const SizedBox(width: 16.0),
          GenderButton(
            onTap: () => maleOrFemale(isMaleSelected: false),
            color: widget.color,
            size: widget.size,
            text: 'أنثى',
            gender: Gender.female,
            selected: !isMale,
          ),
        ],
      ),
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
    required this.selected,
    required this.onTap,
  });

  final MaterialColor color;
  final Size size;
  final String text;
  final Gender gender;
  final bool selected;
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
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
            SvgPicture.asset('icons/${gender.name}.svg', height: 22),
            Text(text),
          ],
        ),
      ),
    );
  }
}
