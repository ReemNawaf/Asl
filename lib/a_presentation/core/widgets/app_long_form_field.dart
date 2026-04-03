import 'package:flutter/material.dart';
import 'package:asl/a_presentation/a_shared/app_colors.dart';
import 'package:asl/a_presentation/a_shared/box_dec.dart';
import 'package:asl/a_presentation/a_shared/constants.dart';
import 'package:asl/a_presentation/a_shared/text_styles.dart';

class AppLongFormField extends StatelessWidget {
  const AppLongFormField({
    super.key,
    required this.label,
    required this.hint,
    required this.validator,
    this.onChanged,
    this.onSaved,
    this.initialValue,
    this.color,
    this.spacing = 6,
    this.maxLines = 3,
    this.isEditing = true,
    this.maxLength = 1000,
  });

  final String label;
  final String hint;
  final double spacing;
  final String? initialValue;
  final Color? color;

  final String? Function(String? value) validator;

  final void Function(String? value)? onSaved;
  final void Function(String? value)? onChanged;
  final bool isEditing;
  final int maxLength;
  final int? maxLines;

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
        TextFormField(
          cursorColor: kBlacksColor,
          cursorHeight: kCursorHeight,
          initialValue: initialValue,
          style: kBodyMedium,
          readOnly: !isEditing,
          maxLength: maxLength,
          maxLines: maxLines,
          decoration:
              kAppFormsInputDecor(hint: hint, color: color, isDense: true),
          keyboardType: TextInputType.multiline,
          onSaved: onSaved,
          validator: validator,
          onChanged: onChanged,
        ),
      ],
    );
  }
}
