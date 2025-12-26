import 'package:asl/a_presentation/core/widgets/loading_wdg.dart';
import 'package:flutter/material.dart';
import 'package:asl/a_presentation/a_shared/app_colors.dart';
import 'package:asl/a_presentation/a_shared/box_dec.dart';
import 'package:asl/a_presentation/a_shared/text_styles.dart';

class AppButton extends StatelessWidget {
  final VoidCallback onPressed;
  final bool hasIcon;
  final String label;
  final Widget? icon;
  final Color fillColor;
  final Color textColor;
  final bool isLoading;
  final bool smallButton;

  const AppButton(
      {super.key,
      required this.onPressed,
      required this.label,
      this.icon,
      this.hasIcon = false,
      required this.fillColor,
      this.textColor = kWhitesColor,
      this.isLoading = false,
      this.smallButton = false});

  @override
  Widget build(BuildContext context) {
    final text = Text(
      label,
      style:
          kBodyMedium.copyWith(color: textColor, fontWeight: FontWeight.w800),
    );
    return RawMaterialButton(
      onPressed: onPressed,
      fillColor: fillColor,
      hoverColor: fillColor.withOpacity(0.5),
      focusColor: fillColor,
      highlightColor: fillColor,
      splashColor: fillColor.withOpacity(0.5),
      padding: const EdgeInsets.symmetric(
        vertical: 10.0,
        horizontal: 12.0,
      ),
      elevation: 0,
      hoverElevation: 0,
      focusElevation: 0,
      highlightElevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: kAppBorderRadius,
        side: fillColor == Colors.transparent
            ? const BorderSide(
                color: kBlacksColor,
                width: 1.5,
              )
            : BorderSide.none,
      ),
      child: isLoading
          ? const LoadingWidget()
          : (!hasIcon
              ? text
              : Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 25.0,
                      width: 25.0,
                      child: icon ?? const SizedBox(),
                    ),
                    const SizedBox(width: 8),
                    text,
                  ],
                )),
    );
  }
}
