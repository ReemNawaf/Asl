import 'package:flutter/material.dart';
import 'package:asl/a_presentation/a_shared/app_colors.dart';
import 'package:asl/a_presentation/a_shared/measurements.dart';
import 'package:asl/a_presentation/a_shared/text_styles.dart';

PreferredSize appBar(
  BuildContext ctx, {
  required Size screenSize,
  required String text,
  bool isBack = false,
}) {
  // final lang = Localizations.localeOf(ctx).languageCode;
  return PreferredSize(
    preferredSize: screenSize,
    child: Padding(
      padding: EdgeInsets.only(
          top: screenSize.height * 0.08, left: 12.0, right: 12.0, bottom: 12.0),
      child: SizedBox(
        height: screenHeight(screenSize) * 0.04,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // SizedBox(
            //     width: screenWidth(screenSize) * 0.1,
            //     child: isBack
            //         ? IconButton(
            //             onPressed: ctx.router.pop,
            //             padding: EdgeInsets.zero,
            //             icon: Icon(
            //               lang == Cons.ara
            //                   ? MyIcons.arrow_right_short
            //                   : MyIcons.arrow_left_short,
            //               color: kBlacksColor.shade200,
            //             ),
            //           )
            //         : null),
            SizedBox(
              width: screenWidth(screenSize) * 0.7,
              child: Text(
                text,
                textAlign: TextAlign.center,
                style: kHeadlineMedium.copyWith(
                    color: kBlacksColor.shade200,
                    fontSize: isPhone(screenSize) ? 17.0 : 20.0),
              ),
            ),
            SizedBox(
              width: screenWidth(screenSize) * 0.1,
            ),
          ],
        ),
      ),
    ),
  );
}
