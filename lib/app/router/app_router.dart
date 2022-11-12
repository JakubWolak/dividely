import 'package:auto_route/auto_route.dart';
import 'package:dividely/boarding/initial/view/initial_view.dart';
import 'package:dividely/boarding/introduction/view/introduction_view.dart';
import 'package:flutter/material.dart';

part 'app_router.gr.dart';

@MaterialAutoRouter(
  routes: <AutoRoute>[
    AutoRoute(page: InitialView, initial: true),
    AutoRoute(page: IntroductionView),
  ],
)
class AppRouter extends _$AppRouter {}
