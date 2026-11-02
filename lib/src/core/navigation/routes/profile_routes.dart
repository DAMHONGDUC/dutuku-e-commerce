import 'package:system_design_v5/v5.dart';

class ProfileRoutes {
  static const SdRouterV5 profile = SdRouterV5(
    name: 'profile',
    path: '/profile',
    fullPath: '/profile',
  );

  static const SdRouterV5 editProfile = SdRouterV5(
    name: 'edit-profile',
    path: 'edit',
    fullPath: '/profile/edit',
  );
}
