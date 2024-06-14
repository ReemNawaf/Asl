import 'package:flutter/material.dart';
import 'package:asl/a_presentation/a_shared/app_colors.dart';
import 'package:asl/a_presentation/a_shared/text_styles.dart';

Widget signInWithGoogleBtn(BuildContext context, Function() forward) {
  return InkWell(
    onTap: forward,
    child: Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(14.0),
          border: Border.all(color: kBlacksColor[400]!, width: 2.5)),
      child: const Padding(
        padding: EdgeInsets.all(6),
        child: Wrap(
          crossAxisAlignment: WrapCrossAlignment.center,
          children: [
            SizedBox(width: 12),
            Text('سجل الدخول بحساب قوقل', style: kBodyMedium),
          ],
        ),
      ),
    ),
  );
}
