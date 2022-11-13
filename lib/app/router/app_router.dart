import 'package:auto_route/auto_route.dart';
import 'package:dividely/app/router/boarding_guard.dart';
import 'package:dividely/auth/login/view/login_view.dart';
import 'package:dividely/auth/register/view/boarding_finished_view.dart';
import 'package:dividely/auth/register/view/confirm_phone_view.dart';
import 'package:dividely/auth/register/view/phone_confirmation_code.dart';
import 'package:dividely/auth/register/view/register_view.dart';
import 'package:dividely/boarding/initial/view/initial_view.dart';
import 'package:dividely/boarding/introduction/view/introduction_view.dart';
import 'package:dividely/boarding/introduction/view/welcome_view.dart';
import 'package:dividely/dashboard/view/creator_dashboard.dart';
import 'package:dividely/dashboard/view/member_dashboard.dart';
import 'package:dividely/join_group/view/group_details_view.dart';
import 'package:dividely/join_group/view/request_sent_view.dart';
import 'package:dividely/join_group/view/scan_qr_code_view.dart';
import 'package:flutter/material.dart';

part 'app_router.gr.dart';

@MaterialAutoRouter(
  routes: <AutoRoute>[
    AutoRoute(
      page: InitialView,
      initial: true,
      guards: [BoardingGuard],
    ),
    AutoRoute(page: IntroductionView),
    AutoRoute(page: WelcomeView),
    AutoRoute(page: RegisterView),
    AutoRoute(page: LoginView),
    AutoRoute(page: ConfirmPhoneView),
    AutoRoute(page: PhoneConfirmationCodeView),
    AutoRoute(page: BoardingFinishedView),
    AutoRoute(page: CreatorDashboardView),
    AutoRoute(page: MemberDashboardView),
    AutoRoute(page: ScanQrCodeView),
    AutoRoute(page: RequestSentView),
    AutoRoute(page: GroupDetailsView),
  ],
)
class AppRouter extends _$AppRouter {
  AppRouter({required super.boardingGuard});
}
