import 'package:asl/a_presentation/a_shared/app_colors.dart';
import 'package:asl/a_presentation/a_shared/text_styles.dart';
import 'package:asl/a_presentation/core/widgets/app_btn.dart';
import 'package:asl/localization/localization_constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class LayersWidget extends StatelessWidget {
  const LayersWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 25.0,
              width: 25.0,
              child: SvgPicture.asset('assets/icons/layer.svg'),
            ),
            const SizedBox(width: 8),
            Text(
              getTr(context, 'generations')!,
              style: kBodyLarge.copyWith(
                  color: kBlacksColor[200], fontWeight: FontWeight.w800),
            ),
          ],
        ),
        const SizedBox(height: 16.0),
        AppButton(
          onPressed: () {},
          label: getTr(context, 'grandchildren')!,
          textColor: kLeafColors[200]!,
          fillColor: kLeafColors[700]!,
          icon: SvgPicture.asset('assets/icons/leaf.svg'),
          hasIcon: true,
        ),
        const SizedBox(height: 16.0),
        AppButton(
          onPressed: () {},
          label: getTr(context, 'parents')!,
          textColor: kStemColors[200]!,
          fillColor: kStemColors[600]!,
          icon: SvgPicture.asset('assets/icons/stem.svg'),
          hasIcon: true,
        ),
        const SizedBox(height: 16.0),
        AppButton(
          onPressed: () {},
          label: getTr(context, 'grandparents')!,
          textColor: kRootColors[200]!,
          fillColor: kRootColors[600]!,
          icon: SvgPicture.asset('assets/icons/root.svg'),
          hasIcon: true,
        ),
      ],
    );
  }
}
