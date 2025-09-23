import 'package:flutter/material.dart';
import 'package:asl/a_presentation/a_shared/app_colors.dart';

class IconOnlyButton extends StatelessWidget {
  final VoidCallback onPressed;
  final Widget icon;
  final bool isLoading;

  const IconOnlyButton({
    super.key,
    required this.onPressed,
    required this.icon,
    this.isLoading = false,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 28,
      height: 28,
      child: RawMaterialButton(
        onPressed: onPressed,
        elevation: 0,
        hoverElevation: 0,
        focusElevation: 0,
        highlightElevation: 0,
        child: isLoading
            ? SizedBox(
                height: 20.0,
                width: 20.0,
                child: CircularProgressIndicator(
                  backgroundColor: kBlacksColor[600],
                  color: kBlacksColor,
                ),
              )
            : icon,
      ),
    );
  }
}
