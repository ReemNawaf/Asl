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
      height: isValid ? 36.0 : 62.0,
      child: TextFormField(
        cursorColor: kBlacksColor,
        cursorHeight: kCursorHeight,
        initialValue: initialValue,
        style: kBodyMedium.copyWith(
            fontWeight: FontWeight.w800, color: kBlacksColor),
        readOnly: !isEditing,
        maxLength: maxLength,
        keyboardType: TextInputType.text,
        maxLines: maxLines,
        decoration:
            kAppFormsInputDecor(hint: hint, color: color, isDense: true),
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
