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
    WelcomeViewRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const WelcomeView(),
      );
    },
    RegisterViewRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const RegisterView(),
      );
    },
    LoginViewRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const LoginView(),
      );
    },
    ConfirmPhoneViewRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const ConfirmPhoneView(),
      );
    },
    PhoneConfirmationCodeViewRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const PhoneConfirmationCodeView(),
      );
    },
    BoardingFinishedViewRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const BoardingFinishedView(),
      );
    },
    CreatorDashboardViewRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const CreatorDashboardView(),
      );
    },
    MemberDashboardViewRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const MemberDashboardView(),
      );
    },
    ScanQrCodeViewRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const ScanQrCodeView(),
      );
    },
    RequestSentViewRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const RequestSentView(),
      );
    },
    GroupDetailsViewRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const GroupDetailsView(),
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
        RouteConfig(
          WelcomeViewRoute.name,
          path: '/welcome-view',
        ),
        RouteConfig(
          RegisterViewRoute.name,
          path: '/register-view',
        ),
        RouteConfig(
          LoginViewRoute.name,
          path: '/login-view',
        ),
        RouteConfig(
          ConfirmPhoneViewRoute.name,
          path: '/confirm-phone-view',
        ),
        RouteConfig(
          PhoneConfirmationCodeViewRoute.name,
          path: '/phone-confirmation-code-view',
        ),
        RouteConfig(
          BoardingFinishedViewRoute.name,
          path: '/boarding-finished-view',
        ),
        RouteConfig(
          CreatorDashboardViewRoute.name,
          path: '/creator-dashboard-view',
        ),
        RouteConfig(
          MemberDashboardViewRoute.name,
          path: '/member-dashboard-view',
        ),
        RouteConfig(
          ScanQrCodeViewRoute.name,
          path: '/scan-qr-code-view',
        ),
        RouteConfig(
          RequestSentViewRoute.name,
          path: '/request-sent-view',
        ),
        RouteConfig(
          GroupDetailsViewRoute.name,
          path: '/group-details-view',
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

/// generated route for
/// [WelcomeView]
class WelcomeViewRoute extends PageRouteInfo<void> {
  const WelcomeViewRoute()
      : super(
          WelcomeViewRoute.name,
          path: '/welcome-view',
        );

  static const String name = 'WelcomeViewRoute';
}

/// generated route for
/// [RegisterView]
class RegisterViewRoute extends PageRouteInfo<void> {
  const RegisterViewRoute()
      : super(
          RegisterViewRoute.name,
          path: '/register-view',
        );

  static const String name = 'RegisterViewRoute';
}

/// generated route for
/// [LoginView]
class LoginViewRoute extends PageRouteInfo<void> {
  const LoginViewRoute()
      : super(
          LoginViewRoute.name,
          path: '/login-view',
        );

  static const String name = 'LoginViewRoute';
}

/// generated route for
/// [ConfirmPhoneView]
class ConfirmPhoneViewRoute extends PageRouteInfo<void> {
  const ConfirmPhoneViewRoute()
      : super(
          ConfirmPhoneViewRoute.name,
          path: '/confirm-phone-view',
        );

  static const String name = 'ConfirmPhoneViewRoute';
}

/// generated route for
/// [PhoneConfirmationCodeView]
class PhoneConfirmationCodeViewRoute extends PageRouteInfo<void> {
  const PhoneConfirmationCodeViewRoute()
      : super(
          PhoneConfirmationCodeViewRoute.name,
          path: '/phone-confirmation-code-view',
        );

  static const String name = 'PhoneConfirmationCodeViewRoute';
}

/// generated route for
/// [BoardingFinishedView]
class BoardingFinishedViewRoute extends PageRouteInfo<void> {
  const BoardingFinishedViewRoute()
      : super(
          BoardingFinishedViewRoute.name,
          path: '/boarding-finished-view',
        );

  static const String name = 'BoardingFinishedViewRoute';
}

/// generated route for
/// [CreatorDashboardView]
class CreatorDashboardViewRoute extends PageRouteInfo<void> {
  const CreatorDashboardViewRoute()
      : super(
          CreatorDashboardViewRoute.name,
          path: '/creator-dashboard-view',
        );

  static const String name = 'CreatorDashboardViewRoute';
}

/// generated route for
/// [MemberDashboardView]
class MemberDashboardViewRoute extends PageRouteInfo<void> {
  const MemberDashboardViewRoute()
      : super(
          MemberDashboardViewRoute.name,
          path: '/member-dashboard-view',
        );

  static const String name = 'MemberDashboardViewRoute';
}

/// generated route for
/// [ScanQrCodeView]
class ScanQrCodeViewRoute extends PageRouteInfo<void> {
  const ScanQrCodeViewRoute()
      : super(
          ScanQrCodeViewRoute.name,
          path: '/scan-qr-code-view',
        );

  static const String name = 'ScanQrCodeViewRoute';
}

/// generated route for
/// [RequestSentView]
class RequestSentViewRoute extends PageRouteInfo<void> {
  const RequestSentViewRoute()
      : super(
          RequestSentViewRoute.name,
          path: '/request-sent-view',
        );

  static const String name = 'RequestSentViewRoute';
}

/// generated route for
/// [GroupDetailsView]
class GroupDetailsViewRoute extends PageRouteInfo<void> {
  const GroupDetailsViewRoute()
      : super(
          GroupDetailsViewRoute.name,
          path: '/group-details-view',
        );

  static const String name = 'GroupDetailsViewRoute';
}
