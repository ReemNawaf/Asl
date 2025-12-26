import 'package:flutter/material.dart';
import 'package:asl/a_presentation/a_shared/box_dec.dart';
import 'package:asl/a_presentation/a_shared/text_styles.dart';

class AppChip extends StatelessWidget {
  const AppChip({
    super.key,
    required this.onTap,
    required this.color,
    required this.label,
    required this.isSelected,
  });

  final Function() onTap;
  final MaterialColor color;
  final String label;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: ChoiceChip(
        selected: isSelected,
        selectedColor: color.shade700.withOpacity(0.9),
        disabledColor: color.shade700.withOpacity(0.2),
        checkmarkColor: color,
        labelStyle: kCalloutStyle.copyWith(color: color.shade300),
        label: Text(label),
        backgroundColor: color.shade300,
        shape: RoundedRectangleBorder(
          borderRadius: kAppBorderRadius,
          side: BorderSide(color: color),
        ),
      ),
    );
  }
}
