import 'package:flutter/material.dart';
import 'package:asl/a_presentation/a_shared/app_colors.dart';
import 'package:asl/a_presentation/a_shared/box_dec.dart';
import 'package:asl/a_presentation/a_shared/constants.dart';
import 'package:asl/a_presentation/a_shared/text_styles.dart';

class AppTextField extends StatelessWidget {
  const AppTextField({
    super.key,
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
    this.controller,
    this.focusNode,
    this.autovalidateMode,
    this.maxLength,
    this.isEditing = true,
    this.maxLines,
  });

  final String hint;
  final bool isValid;
  final double spacing;
  final String? initialValue;
  final Color? color;
  final FieldType fieldType;
  final AutovalidateMode? autovalidateMode;

  final String? Function(String? value) validator;

  final void Function(String? value)? onSaved;
  final void Function(String? value)? onChanged;
  final void Function(String? value)? onFieldSubmitted;
  final bool isEditing;

  final TextEditingController? controller;
  final FocusNode? focusNode;
  final int? maxLength;
  final int? maxLines;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: isValid ? 30.0 : 56.0,
      child: TextFormField(
        obscureText: fieldType == FieldType.password,
        cursorColor: kBlacksColor,
        cursorHeight: kCursorHeight,
        initialValue: initialValue,
        style: kCalloutStyle,
        readOnly: !isEditing,
        maxLength: maxLength,
        // Obscured fields must be single-line (TextFormField assertion).
        maxLines: fieldType == FieldType.password ? 1 : maxLines,
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
        autovalidateMode: autovalidateMode,
        controller: controller,
      ),
    );
  }
}
