import 'package:flutter/material.dart';
import 'package:asl/a_presentation/a_shared/app_colors.dart';
import 'package:asl/a_presentation/a_shared/box_dec.dart';
import 'package:asl/a_presentation/a_shared/constants.dart';
import 'package:asl/a_presentation/a_shared/text_styles.dart';

class AppFormField extends StatelessWidget {
  const AppFormField({
    super.key,
    required this.label,
    required this.hint,
    required this.validator,
    this.onChanged,
    this.onSaved,
    this.onFieldSubmitted,
    this.initialValue,
    this.fieldType = FieldType.text,
    this.color,
    this.spacing = 6,
    this.isValid = true,
    this.isArabic = true,
    this.withLabel = true,
    this.controller,
    this.focusNode,
    this.isEditing = true,
  });

  final String label;
  final String hint;
  final bool isValid;
  final double spacing;
  final String? initialValue;
  final bool isArabic;
  final Color? color;
  final FieldType fieldType;
  final bool withLabel;

  final String? Function(String? value) validator;

  final void Function(String? value)? onSaved;
  final void Function(String? value)? onChanged;
  final void Function(String? value)? onFieldSubmitted;
  final bool isEditing;

  final TextEditingController? controller;
  final FocusNode? focusNode;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (withLabel) ...[
          Text(
            label,
            style: kFootnoteStyle.copyWith(fontWeight: FontWeight.bold),
            textAlign: TextAlign.start,
          ),
        ],
        SizedBox(height: spacing),
        SizedBox(
          height: isValid ? 45.0 : 64.0,
          child: TextFormField(
            obscureText: fieldType == FieldType.password,
            cursorColor: kBlacksColor,
            cursorHeight: 20.0,
            initialValue: initialValue,
            style: kCalloutStyle,
            readOnly: !isEditing,
            textAlign: isArabic ? TextAlign.start : TextAlign.end,
            decoration:
                kAppFormsInputDecor(hint: hint, color: color, isDense: true),
            keyboardType: fieldType == FieldType.email
                ? TextInputType.emailAddress
                : (fieldType == FieldType.password
                    ? TextInputType.visiblePassword
                    : TextInputType.multiline),
            onSaved: onSaved,
            validator: validator,
            onChanged: onChanged,
            onFieldSubmitted: onFieldSubmitted,
            focusNode: focusNode,
            controller: controller,
          ),
        ),
      ],
    );
  }
}
