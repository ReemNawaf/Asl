import 'package:asl/a_presentation/a_shared/constants.dart';
import 'package:asl/a_presentation/core/app_date_field.dart';
import 'package:asl/a_presentation/core/widgets/alive_btn.dart';
import 'package:asl/a_presentation/core/widgets/app_form_field.dart';
import 'package:asl/a_presentation/core/widgets/gender_btn.dart';
import 'package:asl/a_presentation/core/widgets/tree_btn.dart';
import 'package:flutter/material.dart';

class InfoPanel extends StatelessWidget {
  const InfoPanel({
    super.key,
    required this.size,
    required this.color,
    this.isRootPanel = false,
    this.isAlive = true,
    this.height = 0.45,
  });

  final Size size;
  final MaterialColor color;
  final bool isRootPanel;
  final double height;
  final bool isAlive;

  @override
  Widget build(BuildContext context) {
    final formKey = GlobalKey<FormState>();

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        kVSpacer20,
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.only(right: 28.0),
              width: 250,
              height: 70,
              child: AppFormField(
                label: 'الاسم',
                hint: 'الاسم الأول والأخير',
                validator: (validate) => "",
                onSaved: (_) {},
                initialValue: '',
              ),
            ),
            kHSpacer20,
            GenderBtn(
              color: color,
              size: size,
            ),
          ],
        ),
        kVSpacer20,
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              width: 250,
              height: 80,
              child: AppDateField(
                formKey: formKey,
                label: 'تاريخ الميلاد',
                hint: '',
                validate: (validate) => "",
                save: (_) {},
              ),
            ),
            if (isAlive) ...[
              kHSpacer20,
              AliveBtn(color: color, size: size)
            ] else
              SizedBox(
                width: 250,
                height: 80,
                child: AppDateField(
                  formKey: formKey,
                  label: 'تاريخ الوفاة',
                  hint: '',
                  validate: (validate) => "",
                  save: (_) {},
                ),
              ),
          ],
        ),
        if (!isRootPanel) ...[kVSpacer20, TreeButton(color: color, size: size)]
      ],
    );
  }
}
