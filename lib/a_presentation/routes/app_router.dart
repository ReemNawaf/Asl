import 'package:asl/a_presentation/auth/auth_page.dart';
import 'package:asl/a_presentation/home/home_page.dart';
import 'package:asl/a_presentation/splash/splash_page.dart';
import 'package:auto_route/auto_route.dart';

part 'app_router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Page,Route')
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: SplashRoute.page, initial: true),
        AutoRoute(page: AuthRoute.page),
        AutoRoute(page: HomeRoute.page),
      ];
}
