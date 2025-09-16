import 'package:asl/a_presentation/a_shared/box_dec.dart';
import 'package:asl/a_presentation/a_shared/constants.dart';
import 'package:asl/a_presentation/a_shared/strings.dart';
import 'package:asl/a_presentation/a_shared/text_styles.dart';
import 'package:asl/a_presentation/core/widgets/logo_slogan_wdg.dart';
import 'package:asl/a_presentation/routes/app_router.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:asl/a_presentation/a_shared/app_colors.dart';
import 'package:asl/a_presentation/a_shared/measurements.dart';
import 'package:asl/b_application/auth_bloc/auth_bloc.dart';

@RoutePage()
class SplashPage extends StatelessWidget {
  const SplashPage({super.key});
  // with BlocLister you can do the things that you cannot do while the app is building e.g. Navigation
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    if (size.height < MIM_HEIGHT || size.width < MIM_WIDTH) {
      return Scaffold(
        backgroundColor: kWhitesColor[600],
        body: Container(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const LogoSloganWidget(),
              kVSpacer10,
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 150.0),
                child: Divider(
                  color: kBlacksColor[800],
                  thickness: 2,
                ),
              ),
              kVSpacer20,
              Text(
                '${ARABIC_STRINGS['required_bigger_screen_title']!} 🌴✨',
                style: kHeadlineSmall.copyWith(fontSize: 24),
              ),
              kVSpacer30,
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 70.0),
                child: Text(
                  '${ARABIC_STRINGS['required_bigger_screen_des_1']!} ${ARABIC_STRINGS['required_bigger_screen_des_2']!}',
                  style: kBodyLarge.copyWith(wordSpacing: 2.0, height: 1.8),
                  textAlign: TextAlign.center,
                ),
              ),
              kVSpacer20,
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                decoration: BoxDecoration(
                    color: kRootColors[600], borderRadius: kAppBorderRadius),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(Icons.info_outline, color: kRootColors[300]),
                    kHSpacer5,
                    Text(
                      'ننصح باستخدام شاشة بعرض $MIM_WIDTH وطول $MIM_HEIGHT أو أكبر',
                      style: kBodyMedium.copyWith(wordSpacing: 2.0),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      );
    } else {
      return Padding(
        padding: const EdgeInsets.all(8.0),
        child: BlocListener<AuthBloc, AuthState>(
          listener: (context, state) async {
            state.map(
              initial: (_) {},
              authenticated: (_) {
                // context.router.push(const HomeRoute());
              },
              unauthenticated: (_) {
                context.router.replace(const AuthRoute());
              },
            );
          },
          child: Scaffold(
            body: Container(
              alignment: AlignmentDirectional.center,
              width: screenWidth(MediaQuery.of(context).size),
              child: CircularProgressIndicator(color: kRootColors[600]),
            ),
          ),
        ),
      );
    }
  }
}
