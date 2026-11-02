import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:system_design_v5/v5.dart';

import '../splash_screen.dart';
import 'package:tuku_shop/src/core/navigation/routes/splash_routes.dart';

class SplashStack {
  static final routes = [
    SdGoRouteV5(
      path: SplashRoutes.splash.path,
      name: SplashRoutes.splash.name,
      builder: (BuildContext context, GoRouterState state) {
        return const SplashScreen();
      },
    ),
  ];
}
