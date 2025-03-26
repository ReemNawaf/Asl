import 'package:flutter/material.dart';
import 'package:asl/a_presentation/a_shared/box_dec.dart';

class IconButton extends StatelessWidget {
  final VoidCallback onPressed;
  final Widget icon;
  final Color fillColor;

  const IconButton({
    super.key,
    required this.onPressed,
    required this.icon,
    required this.fillColor,
  });

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: onPressed,
      fillColor: fillColor,
      focusColor: fillColor,
      highlightColor: fillColor,
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
      ),
      child: SizedBox(height: 25.0, width: 25.0, child: icon),
    );
  }
}
