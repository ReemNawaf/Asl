import 'package:asl/a_presentation/a_shared/app_colors.dart';
import 'package:asl/a_presentation/a_shared/constants.dart';
import 'package:asl/a_presentation/core/widgets/app_btn.dart';
import 'package:asl/a_presentation/core/widgets/app_form_field.dart';
import 'package:asl/a_presentation/pages/home_page.dart';
import 'package:flutter/material.dart';

class AuthPage extends StatelessWidget {
  static const String routeName = 'AuthPage';
  const AuthPage({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: kWhitesColor[600],
      body: Center(
        child: SizedBox(
          width: size.width * 0.25,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/images/logo.png', height: 160),
              AppFormField(
                label: 'البريد الإلكتروني',
                hint: 'example@example.com',
                isArabic: false,
                validate: (_) => '',
                save: (_) {},
                initialValue: '',
                color: kRootColors[700],
              ),
              kVSpacer10,
              AppFormField(
                label: 'الرقم السري',
                hint: '**************',
                isArabic: false,
                validate: (_) => '',
                save: (_) {},
                initialValue: '',
                color: kRootColors[700],
              ),
              kVSpacer10,
              AppButton(
                onPressed: () =>
                    Navigator.pushNamed(context, HomePage.routeName),
                label: 'تسجيل الدخول',
                textColor: kBlacksColor[300]!,
                fillColor: kRootColors[600]!,
              )
            ],
          ),
        ),
      ),
    );
  }
}
