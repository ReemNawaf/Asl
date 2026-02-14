import 'package:asl/a_presentation/a_shared/constants.dart';
import 'package:flutter/material.dart';
import 'package:asl/a_presentation/a_shared/app_colors.dart';
import 'package:asl/a_presentation/a_shared/box_dec.dart';
import 'package:asl/a_presentation/a_shared/text_styles.dart';

class AppViewField extends StatelessWidget {
  const AppViewField({
    super.key,
    this.initialValue,
    this.color,
    this.isArabic = true,
  });

  final String? initialValue;
  final bool isArabic;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      cursorColor: kBlacksColor,
      cursorHeight: kCursorHeight,
      initialValue: initialValue,
      style: kCalloutStyle,
      readOnly: true,
      textAlign: isArabic ? TextAlign.start : TextAlign.end,
      decoration: kAppFormsInputDecor(color: color, isDense: true),
    );
  }
}
