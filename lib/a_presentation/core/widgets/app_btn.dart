import 'package:flutter/material.dart';
import 'package:asl/a_presentation/a_shared/app_colors.dart';
import 'package:asl/a_presentation/a_shared/box_dec.dart';
import 'package:asl/a_presentation/a_shared/text_styles.dart';

class AppButton extends StatelessWidget {
  final VoidCallback onPressed;
  final bool hasIcon;
  final String label;
  final IconData? icon;
  final Color fillColor;
  final Color textColor;
  const AppButton({
    super.key,
    required this.onPressed,
    required this.label,
    this.icon = Icons.share,
    this.hasIcon = false,
    this.fillColor = kBlacksColor,
    this.textColor = kWhitesColor,
  });

  @override
  Widget build(BuildContext context) {
    final text = Text(
      label,
      style: kBodyLarge.copyWith(color: textColor, fontWeight: FontWeight.w800),
    );
    return RawMaterialButton(
      onPressed: onPressed,
      fillColor: fillColor.withOpacity(0.5),
      hoverColor: fillColor.withOpacity(0.5),
      focusColor: fillColor,
      highlightColor: fillColor,
      splashColor: fillColor.withOpacity(0.5),
      padding: const EdgeInsets.symmetric(
        vertical: 14.0,
        horizontal: 30,
      ),
      elevation: 0,
      hoverElevation: 0,
      focusElevation: 0,
      highlightElevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: kAppBorderRadius,
        side: fillColor == Colors.transparent
            ? const BorderSide(
                color: kRedsColor,
                width: 1.5,
              )
            : BorderSide.none,
      ),
      child: !hasIcon
          ? text
          : Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                text,
                const SizedBox(width: 8),
                Icon(icon, color: const Color(0xFF303030)),
              ],
            ),
    );
  }
}
