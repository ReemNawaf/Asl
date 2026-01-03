import 'package:asl/a_presentation/a_shared/constants.dart';
import 'package:asl/a_presentation/routes/app_router.dart';
import 'package:asl/a_presentation/splash/small_screen_page.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:asl/a_presentation/a_shared/app_colors.dart';
import 'package:asl/a_presentation/a_shared/measurements.dart';
import 'package:asl/b_application/auth_bloc/auth_bloc.dart';

@RoutePage()
class SplashPage extends StatelessWidget {
  const SplashPage({super.key});
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    if (size.height < MIM_HEIGHT || size.width < MIM_WIDTH) {
      return const SmallScreenPage();
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
                final currentRoute = context.router.current.name;
                if (currentRoute != TreeRoute.name) {
                  context.router.replace(const AuthRoute());
                }
              },
            );
          },
          child: Scaffold(
            body: Center(
              child: Container(
                alignment: AlignmentDirectional.center,
                width: screenWidth(MediaQuery.of(context).size),
                child: CircularProgressIndicator(color: kRootColors[600]),
              ),
            ),
          ),
        ),
      );
    }
  }
}
