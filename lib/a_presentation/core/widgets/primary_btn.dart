import 'package:flutter/material.dart';
import 'package:asl/a_presentation/a_shared/app_colors.dart';
import 'package:asl/a_presentation/a_shared/measurements.dart';
import 'package:asl/a_presentation/a_shared/text_styles.dart';

class PrimaryButton extends StatelessWidget {
  const PrimaryButton({
    super.key,
    required this.screenSize,
    required this.onTap,
    required this.label,
    this.isLoading = false,
  });

  final Size screenSize;
  final VoidCallback onTap;
  final String label;
  final bool isLoading;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: screenWidth(screenSize) * (isPhone(screenSize) ? 0.37 : 0.4),
        padding: const EdgeInsets.symmetric(horizontal: 18.0, vertical: 14.0),
        alignment: Alignment.center,
        child: isLoading
            ? SizedBox(
                height: 20.0,
                width: 20.0,
                child: CircularProgressIndicator(
                  backgroundColor: kBlacksColor[600],
                  color: kBlacksColor,
                ),
              )
            : Text(
                label,
                style: kBodyLarge.copyWith(
                    color: kWhitesColor, fontWeight: FontWeight.w800),
              ),
      ),
    );
  }
}
