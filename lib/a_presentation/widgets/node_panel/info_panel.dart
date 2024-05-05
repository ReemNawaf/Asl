import 'package:asl/a_presentation/core/widgets/app_date_field.dart';
import 'package:asl/a_presentation/core/widgets/app_form_field.dart';
import 'package:asl/a_presentation/core/widgets/gender_btn.dart';
import 'package:asl/a_presentation/core/widgets/tree_btn.dart';
import 'package:flutter/material.dart';

class InfoPanel extends StatelessWidget {
  const InfoPanel({super.key, required this.size, required this.color});
  final Size size;
  final MaterialColor color;

  @override
  Widget build(BuildContext context) {
    final formKey = GlobalKey<FormState>();

    return Container(
      padding: EdgeInsets.only(right: size.width * 0.07),
      height: size.height * 0.55,
      alignment: Alignment.center,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: size.height * 0.02),
          SizedBox(
            width: size.width * 0.55,
            height: size.height * 0.1,
            child: Row(
              children: [
                SizedBox(
                  width: size.width * 0.25,
                  height: size.height * 0.1,
                  child: AppFormField(
                    label: 'الاسم',
                    hint: 'الاسم الأول والأخير',
                    validate: (validate) => "",
                    save: (_) {},
                    initialValue: '',
                  ),
                ),
                GenderBtn(
                  color: color,
                  size: size,
                ),
              ],
            ),
          ),
          SizedBox(height: size.height * 0.02),
          SizedBox(
            width: size.width * 0.55,
            height: size.height * 0.1,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  width: size.width * 0.25,
                  height: size.height * 0.1,
                  child: AppDateField(
                    formKey: formKey,
                    label: 'الاسم',
                    hint: 'الاسم الأول والأخير',
                    validate: (validate) => "",
                    save: (_) {},
                  ),
                ),
                SizedBox(
                  width: size.width * 0.25,
                  height: size.height * 0.1,
                  child: AppDateField(
                    formKey: formKey,
                    label: 'الاسم',
                    hint: 'الاسم الأول والأخير',
                    validate: (validate) {
                      return "";
                    },
                    save: (_) {},
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: size.height * 0.02),
          TreeButton(color: color, size: size)
        ],
      ),
    );
  }
}
