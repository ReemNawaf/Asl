import 'package:asl/a_presentation/a_shared/app_colors.dart';
import 'package:asl/a_presentation/a_shared/box_dec.dart';
import 'package:asl/a_presentation/a_shared/constants.dart';
import 'package:asl/a_presentation/a_shared/text_styles.dart';
import 'package:asl/localization/localization_constants.dart';
import 'package:flutter/material.dart';

/// Contains useful functions to reduce boilerplate code
enum SnackBarType {
  error,
  success,
  info,
}

// Vertical spacing constants. Adjust to your liking.
const double iVerticalSpaceSmall = 10.0;
const double iVerticalSpaceMedium = 20.0;
const double iVerticalSpaceLarge = 60.0;

// Vertical spacing constants. Adjust to your liking.
const double iHorizontalSpaceSmall = 10.0;
const double iHorizontalSpaceMedium = 20.0;
const double iHorizontalSpaceLarge = 60.0;

void appSnackBar(
  BuildContext dialogContext, {
  required String text,
  Widget? icon,
  Color? color,
  SnackBarType type = SnackBarType.info,
}) {
  ScaffoldMessenger.of(dialogContext).showSnackBar(SnackBar(
    content: Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        SizedBox(
          width: 10,
          child: icon ??
              ((type == SnackBarType.success
                  ? Icon(Icons.check, color: kLeafColors[200])
                  : (type == SnackBarType.error
                      ? const Icon(Icons.close, color: kRedColors)
                      : const Icon(Icons.info_outline_rounded,
                          color: kRootColors)))),
        ),
        kHSpacer20,
        Text(
          text,
          style: kBodyMedium,
        ),
      ],
    ),
//
    padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 6.0),
    duration: const Duration(seconds: 2),
    width: 400.0,
    behavior: SnackBarBehavior.floating,
    shape: RoundedRectangleBorder(
      borderRadius: kAppBorderRadius,
    ),
    backgroundColor: color ??
        ((type == SnackBarType.success
            ? kLeafColors[700]
            : (type == SnackBarType.error
                ? kRedColors[700]
                : kRootColors[700]))),
  ));
}

/// Returns a vertical space with height set to [_VerticalSpaceSmall]
Widget verticalSpaceSmall() {
  return verticalSpace(iVerticalSpaceSmall);
}

/// Returns a vertical space with height set to [_VerticalSpaceMedium]
Widget verticalSpaceMedium() {
  return verticalSpace(iVerticalSpaceMedium);
}

/// Returns a vertical space with height set to [_VerticalSpaceLarge]
Widget verticalSpaceLarge() {
  return verticalSpace(iVerticalSpaceLarge);
}

/// Returns a vertical space equal to the [height] supplied
Widget verticalSpace(double height) {
  return Container(height: height);
}

/// Returns a vertical space with height set to [_HorizontalSpaceSmall]
Widget horizontalSpaceSmall() {
  return horizontalSpace(iHorizontalSpaceSmall);
}

/// Returns a vertical space with height set to [_HorizontalSpaceMedium]
Widget horizontalSpaceMedium() {
  return horizontalSpace(iHorizontalSpaceMedium);
}

/// Returns a vertical space with height set to [HorizontalSpaceLarge]
Widget horizontalSpaceLarge() {
  return horizontalSpace(iHorizontalSpaceLarge);
}

/// Returns a vertical space equal to the [width] supplied
Widget horizontalSpace(double width) {
  return Container(width: width);
}

String getNodePartnerTitle(context, gender, number) {
  return gender == Gender.female
      ? (number > 1
          ? getTr(context, 'her_husbands')!
          : getTr(context, 'her_husband')!)
      : (number > 1
          ? getTr(context, 'his_wifes')!
          : getTr(context, 'his_wife')!);
}

String getNodePartnerTitleSingle(context, gender) {
  return gender == Gender.female
      ? getTr(context, 'her_husband')!
      : getTr(context, 'his_wife')!;
}

String getNodeRelationPanelTitle(context, gender) {
  return gender == Gender.female
      ? getTr(context, 'husband')!
      : getTr(context, 'wife')!;
}

String getNodeChildrenTitle(context, gender) {
  return gender == Gender.female
      ? getTr(context, 'her_children')!
      : getTr(context, 'his_children')!;
}

String getParentTitle(context, gender) {
  return gender == Gender.male
      ? getTr(context, 'mother')!
      : getTr(context, 'mother')!;
}
