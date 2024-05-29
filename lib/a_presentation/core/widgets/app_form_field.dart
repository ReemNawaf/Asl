import 'package:flutter/material.dart';
import 'package:asl/a_presentation/a_shared/app_colors.dart';
import 'package:asl/a_presentation/a_shared/box_dec.dart';
import 'package:asl/a_presentation/a_shared/constants.dart';
import 'package:asl/a_presentation/a_shared/text_styles.dart';

class AppFormField extends StatelessWidget {
  final String label;
  final String hint;
  final bool isValid;
  final double spacing;
  final String initialValue;
  final bool isArabic;
  final Color? color;
  final FieldType fieldType;
  final String? Function(String? value) validate;
  final void Function(String? value) save;

  const AppFormField(
      {super.key,
      required this.label,
      required this.hint,
      required this.validate,
      required this.save,
      required this.initialValue,
      this.fieldType = FieldType.text,
      this.color,
      this.spacing = 6,
      this.isValid = true,
      this.isArabic = true});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: kFootnoteStyle.copyWith(fontWeight: FontWeight.bold),
          textAlign: TextAlign.start,
        ),
        SizedBox(height: spacing),
        SizedBox(
          height: isValid ? 45.0 : 64.0,
          child: TextFormField(
            cursorColor: kBlacksColor,
            cursorHeight: 20.0,
            initialValue: initialValue,
            style: kHeadlineMedium,
            textAlign: isArabic ? TextAlign.start : TextAlign.end,
            decoration:
                kAppFormsInputDecor(hint: hint, color: color, isDense: true),
            keyboardType: fieldType == FieldType.email
                ? TextInputType.emailAddress
                : (fieldType == FieldType.password
                    ? TextInputType.visiblePassword
                    : TextInputType.multiline),
            onSaved: save,
            validator: validate,
          ),
        ),
      ],
    );
  }
}
