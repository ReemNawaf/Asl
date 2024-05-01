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
  final String? Function(String? value) validate;
  final void Function(String? value) save;

  const AppFormField({
    super.key,
    required this.label,
    required this.hint,
    required this.validate,
    required this.save,
    required this.initialValue,
    this.spacing = 10,
    this.isValid = true,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: kAppHPadding,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            label,
            style: kHeadlineMedium.copyWith(fontWeight: FontWeight.bold),
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
              textAlign: TextAlign.start,
              decoration: kAppFormsInputDecor(hint: hint, isDense: true),
              keyboardType: TextInputType.multiline,
              onSaved: save,
              validator: validate,
            ),
          ),
        ],
      ),
    );
  }
}
