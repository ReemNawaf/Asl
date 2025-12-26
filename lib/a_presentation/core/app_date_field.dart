import 'package:flutter/material.dart';
import 'package:asl/a_presentation/a_shared/app_colors.dart';
import 'package:asl/a_presentation/a_shared/box_dec.dart';
import 'package:asl/a_presentation/a_shared/constants.dart';
import 'package:asl/a_presentation/a_shared/text_styles.dart';

class AppDateField extends StatelessWidget {
  final GlobalKey<FormState> formKey;

  final String label;
  final String hint;
  final bool isValid;
  final double spacing;
  final String? Function(String? value) validate;
  final void Function(String? value) save;
  final void Function(DateTime? date) changeDate;
  final TextEditingController dateController;
  final bool isEditing;
  final DateTime startDate;
  final DateTime endDate;
  final bool withPadding;

  const AppDateField(
      {super.key,
      required this.label,
      required this.hint,
      required this.validate,
      required this.save,
      this.spacing = 10,
      this.isValid = true,
      required this.formKey,
      required this.changeDate,
      required this.dateController,
      this.isEditing = false,
      required this.startDate,
      required this.endDate,
      this.withPadding = true});

  @override
  Widget build(BuildContext context) {
    Future<DateTime?> selectDate() async {
      final DateTime? picked = await showDatePicker(
        context: context,
        firstDate: startDate,
        lastDate: endDate,
      );

      return picked;
    }

    return Padding(
      padding: withPadding ? kAppHPadding : EdgeInsets.zero,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            label,
            style: kFootnoteStyle.copyWith(
                fontWeight: FontWeight.bold, height: 1.5),
          ),
          SizedBox(height: spacing),
          SizedBox(
            height: isValid ? 45.0 : 64.0,
            child: TextFormField(
              style: kBodyMedium.copyWith(color: kBlacksColor),
              cursorColor: kRootColors,
              cursorHeight: 20.0,
              controller: dateController,
              decoration: kAppFormsInputDecor(
                hint: hint,
                isDense: true,
                icon: const Icon(
                  Icons.calendar_today,
                  size: 25.0,
                ),
              ),
              textAlign: TextAlign.start,
              keyboardType: TextInputType.multiline,
              onTap: () => isEditing ? selectDate().then(changeDate) : null,
              readOnly: true,
            ),
          ),
        ],
      ),
    );
  }
}
