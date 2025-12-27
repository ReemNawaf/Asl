// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'app_router.dart';

abstract class _$AppRouter extends RootStackRouter {
  // ignore: unused_element
  _$AppRouter({super.navigatorKey});

  @override
  final Map<String, PageFactory> pagesMap = {
    AuthRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const AuthPage(),
      );
    },
    HomeRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const HomePage(),
      );
    },
    SplashRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const SplashPage(),
      );
    },
    TreeRoute.name: (routeData) {
      final pathParams = routeData.inheritedPathParams;
      final args = routeData.argsAs<TreeRouteArgs>(
          orElse: () => TreeRouteArgs(treeId: pathParams.getString('treeId')));
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: TreePage(
          key: args.key,
          treeId: args.treeId,
        ),
      );
    },
  };
}

/// generated route for
/// [AuthPage]
class AuthRoute extends PageRouteInfo<void> {
  const AuthRoute({List<PageRouteInfo>? children})
      : super(
          AuthRoute.name,
          initialChildren: children,
        );

  static const String name = 'AuthRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [HomePage]
class HomeRoute extends PageRouteInfo<void> {
  const HomeRoute({List<PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [SplashPage]
class SplashRoute extends PageRouteInfo<void> {
  const SplashRoute({List<PageRouteInfo>? children})
      : super(
          SplashRoute.name,
          initialChildren: children,
        );

  static const String name = 'SplashRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [TreePage]
class TreeRoute extends PageRouteInfo<TreeRouteArgs> {
  TreeRoute({
    Key? key,
    required String treeId,
    List<PageRouteInfo>? children,
  }) : super(
          TreeRoute.name,
          args: TreeRouteArgs(
            key: key,
            treeId: treeId,
          ),
          rawPathParams: {'treeId': treeId},
          initialChildren: children,
        );

  static const String name = 'TreeRoute';

  static const PageInfo<TreeRouteArgs> page = PageInfo<TreeRouteArgs>(name);
}

class TreeRouteArgs {
  const TreeRouteArgs({
    this.key,
    required this.treeId,
  });

  final Key? key;

  final String treeId;

  @override
  String toString() {
    return 'TreeRouteArgs{key: $key, treeId: $treeId}';
  }
}
