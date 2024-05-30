import 'package:flutter/material.dart';
import 'package:asl/a_presentation/a_shared/app_colors.dart';
import 'package:asl/a_presentation/a_shared/box_dec.dart';
import 'package:asl/a_presentation/a_shared/constants.dart';
import 'package:asl/a_presentation/a_shared/text_styles.dart';

class AppDateField extends StatefulWidget {
  final GlobalKey<FormState> formKey;

  final String label;
  final String hint;
  final bool isValid;
  final double spacing;
  final String? Function(String? value) validate;
  final void Function(String? value) save;

  const AppDateField({
    super.key,
    required this.label,
    required this.hint,
    required this.validate,
    required this.save,
    this.spacing = 10,
    this.isValid = true,
    required this.formKey,
  });

  @override
  State<AppDateField> createState() => _AppDateFieldState();
}

class _AppDateFieldState extends State<AppDateField> {
  TextEditingController dateController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    Future<DateTime?> selectDate() async {
      // final initialDate = ref.read(eventDateProvider);
      final DateTime? picked = await showDatePicker(
        context: context,
        // initialDate: initialDate,
        firstDate: DateTime.now(),
        lastDate: DateTime.now().add(
          const Duration(days: 365),
        ),
      );

      if (picked != null) {
        setState(() {
          // dateController.text = DateFormat('yyyy-MM-dd').format(picked);
        });
      }
      return picked;
    }

    return Padding(
      padding: kAppHPadding,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            widget.label,
            style: kFootnoteStyle.copyWith(
                fontWeight: FontWeight.bold, height: 1.5),
          ),
          SizedBox(height: widget.spacing),
          SizedBox(
            height: widget.isValid ? 45.0 : 64.0,
            child: TextFormField(
              style: kBodyMedium.copyWith(color: kBlacksColor),
              cursorColor: kRootColors,
              cursorHeight: 20.0,
              controller: dateController,
              decoration: kAppFormsInputDecor(
                hint: widget.hint,
                isDense: true,
                icon: const Icon(
                  Icons.calendar_today,
                  size: 25.0,
                ),
              ),
              textAlign: TextAlign.start,
              keyboardType: TextInputType.multiline,
              onTap: () {
                selectDate();
                FocusScope.of(context).requestFocus(FocusNode());
              },
              readOnly: true,
            ),
          ),
        ],
      ),
    );
  }
}
