import 'package:asl/a_presentation/a_shared/app_colors.dart';
import 'package:asl/a_presentation/auth/widgets/sign_in_form.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class AuthPage extends StatelessWidget {
  static const String routeName = 'AuthPage';
  const AuthPage({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: kWhitesColor[600],
      body: Center(child: SignInForm(size)),
    );
  }
}
