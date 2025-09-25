import 'package:asl/a_presentation/a_shared/constants.dart';
import 'package:flutter/material.dart';
import 'package:asl/a_presentation/a_shared/app_colors.dart';
import 'package:asl/a_presentation/a_shared/text_styles.dart';
import 'package:flutter_svg/svg.dart';

Widget signInWithGoogleBtn(BuildContext context, Function() forward) {
  return InkWell(
    onTap: forward,
    child: Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(14.0),
          border: Border.all(color: kBlacksColor[400]!, width: 2.5)),
      child: Padding(
        padding: const EdgeInsets.all(6),
        child: Wrap(
          crossAxisAlignment: WrapCrossAlignment.center,
          children: [
            kHSpacer10,
            SvgPicture.asset(
              'assets/icons/google.svg',
              height: 20,
              width: 20,
              colorFilter: const ColorFilter.mode(kRootColors, BlendMode.srcIn),
            ),
            kHSpacer10,
            // TODO: add localization here
            const Text('تسجيل الدخول مع Google', style: kBodyMedium),
          ],
        ),
      ),
    ),
  );
}
