import 'package:asl/a_presentation/a_shared/app_colors.dart';
import 'package:asl/a_presentation/a_shared/constants.dart';
import 'package:asl/a_presentation/a_shared/text_styles.dart';
import 'package:asl/a_presentation/core/widgets/logo_slogan_wdg.dart';
import 'package:asl/a_presentation/core/widgets/info_container.dart';
import 'package:asl/localization/localization_constants.dart';
import 'package:flutter/material.dart';

class SmallScreenPage extends StatelessWidget {
  const SmallScreenPage({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: kWhitesColor[600],
      body: Container(
        alignment: Alignment.center,
        width: size.width,
        height: size.height,
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const LogoSloganWidget(),
              kVSpacer10,
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 100.0),
                child: Divider(
                  color: kRootColors[600],
                  thickness: 2,
                ),
              ),
              kVSpacer20,
              Text(
                '${getTr(context, 'required_bigger_screen_title')!} 🌴✨',
                style: kHeadlineSmall.copyWith(fontSize: 24),
              ),
              kVSpacer30,
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 70.0),
                child: Text(
                  '${getTr(context, 'required_bigger_screen_des_1')!} ${getTr(context, 'required_bigger_screen_des_2')!}',
                  style: kBodyLarge.copyWith(wordSpacing: 2.0, height: 1.8),
                  textAlign: TextAlign.center,
                ),
              ),
              kVSpacer20,
              InfoContainer(
                info:
                    '${getTr(context, 'we_recommend_using_screen_with_width')} $MIM_WIDTH ${getTr(context, 'and_height')} $MIM_HEIGHT ${getTr(context, 'or_larger')}',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
