import 'package:asl/a_presentation/a_shared/app_colors.dart';
import 'package:asl/a_presentation/a_shared/box_dec.dart';
import 'package:asl/a_presentation/a_shared/text_styles.dart';
import 'package:asl/a_presentation/core/widgets/app_btn.dart';
import 'package:asl/a_presentation/pages/tree_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  static const String routeName = '/';

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Row(
        children: [
          Container(
            color: const Color(0xFFFFFAF5),
            width: size.width * 0.15,
            height: size.height,
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 14.0),
            child: Column(
              children: [
                TextField(
                  textAlign: TextAlign.right,
                  decoration: kSearchBarInputDecor(),
                ),
                const Spacer(),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'الأجيـــــــال',
                          style: kBodyLarge.copyWith(
                              color: kBlacksColor[200],
                              fontWeight: FontWeight.w800),
                        ),
                        const SizedBox(width: 8),
                        SizedBox(
                          height: 25.0,
                          width: 25.0,
                          child: SvgPicture.asset('assets/icons/layer.svg'),
                        ),
                      ],
                    ),
                    const SizedBox(height: 16.0),
                    AppButton(
                      onPressed: () {},
                      label: 'الأحفـــــــاد',
                      textColor: kLeafColors[200]!,
                      fillColor: kLeafColors[700]!,
                      icon: SvgPicture.asset('assets/icons/leaf.svg'),
                      hasIcon: true,
                    ),
                    const SizedBox(height: 16.0),
                    AppButton(
                      onPressed: () {},
                      label: 'الأبــــــاء',
                      textColor: kStemColors[200]!,
                      fillColor: kStemColors[600]!,
                      icon: SvgPicture.asset('assets/icons/stem.svg'),
                      hasIcon: true,
                    ),
                    const SizedBox(height: 16.0),
                    AppButton(
                      onPressed: () {},
                      label: 'الأجـــــــداد',
                      textColor: kRootColors[200]!,
                      fillColor: kRootColors[600]!,
                      icon: SvgPicture.asset('assets/icons/root.svg'),
                      hasIcon: true,
                    ),
                  ],
                ),
                const Spacer(),
                AppButton(
                  onPressed: () {},
                  label: 'مشاركة',
                  fillColor: const Color(0xFFFFEFE2),
                  textColor: const Color(0xFF303030),
                  icon: const Icon(Icons.ios_share),
                  hasIcon: true,
                ),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(vertical: 20.0),
            width: size.width * 0.85,
            child: const TreeView(),
          ),
        ],
      ),
    );
  }
}
