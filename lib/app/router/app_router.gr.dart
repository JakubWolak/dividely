// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

part of 'app_router.dart';

class _$AppRouter extends RootStackRouter {
  _$AppRouter([GlobalKey<NavigatorState>? navigatorKey]) : super(navigatorKey);

  @override
  final Map<String, PageFactory> pagesMap = {
    InitialViewRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const InitialView(),
      );
    },
    IntroductionViewRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const IntroductionView(),
      );
    },
  };

  @override
  List<RouteConfig> get routes => [
        RouteConfig(
          InitialViewRoute.name,
          path: '/',
        ),
        RouteConfig(
          IntroductionViewRoute.name,
          path: '/introduction-view',
        ),
      ];
}

/// generated route for
/// [InitialView]
class InitialViewRoute extends PageRouteInfo<void> {
  const InitialViewRoute()
      : super(
          InitialViewRoute.name,
          path: '/',
        );

  static const String name = 'InitialViewRoute';
}

/// generated route for
/// [IntroductionView]
class IntroductionViewRoute extends PageRouteInfo<void> {
  const IntroductionViewRoute()
      : super(
          IntroductionViewRoute.name,
          path: '/introduction-view',
        );

  static const String name = 'IntroductionViewRoute';
}
