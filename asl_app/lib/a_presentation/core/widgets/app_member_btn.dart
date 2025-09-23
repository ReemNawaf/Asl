import 'package:asl/a_presentation/core/widgets/loading_wdg.dart';
import 'package:flutter/material.dart';
import 'package:asl/a_presentation/a_shared/app_colors.dart';
import 'package:asl/a_presentation/a_shared/box_dec.dart';
import 'package:asl/a_presentation/a_shared/text_styles.dart';

class AddMemberButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String label;
  final Color color;
  final bool isLoading;

  const AddMemberButton({
    super.key,
    required this.onPressed,
    required this.label,
    required this.color,
    this.isLoading = false,
  });

  @override
  Widget build(BuildContext context) {
    final text = Text(
      label,
      style: kFootnoteStyle.copyWith(
          color: kBlacksColor[300], fontWeight: FontWeight.w800),
    );
    return Container(
      padding: const EdgeInsets.only(bottom: 10.0),
      height: 45.0,
      child: RawMaterialButton(
        onPressed: onPressed,
        fillColor: color,
        hoverColor: color.withOpacity(0.5),
        focusColor: color,
        highlightColor: color,
        splashColor: color.withOpacity(0.5),
        padding: const EdgeInsets.symmetric(horizontal: 12.0),
        elevation: 0,
        hoverElevation: 0,
        focusElevation: 0,
        highlightElevation: 0,
        shape: RoundedRectangleBorder(borderRadius: kAppBorderRadius),
        child: isLoading ? LoadingWidget(color: color) : text,
      ),
    );
  }
}
