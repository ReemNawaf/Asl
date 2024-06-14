import 'package:asl/a_presentation/routes/app_router.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:asl/a_presentation/a_shared/app_colors.dart';
import 'package:asl/a_presentation/a_shared/measurements.dart';
import 'package:asl/b_application/auth/auth_bloc.dart';

@RoutePage()
class SplashPage extends StatelessWidget {
  const SplashPage({super.key});
  // with BlocLister you can do the things that you cannot do while the app is building e.g. Navigation
  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthBloc, AuthState>(
      listener: (context, state) async {
        state.map(
          initial: (_) {},
          authenticated: (_) {
            return context.router.push(const HomeRoute());
          },
          unauthenticated: (_) {
            return context.router.push(const AuthRoute());
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
    );
  }
}
