import 'package:auto_route/auto_route.dart';
import 'package:phone_app/features/auth/auth_screen.dart';
import 'package:phone_app/features/splash/splash_screen.dart';
import 'package:phone_app/widgets/bottom_navigator.dart';

export 'package:auto_route/auto_route.dart';

export 'mobile_app_router.gr.dart';

@CupertinoAutoRouter(
  routes: <AutoRoute>[
    AdaptiveRoute(
      page: SplashScreen,
      initial: true,
      path: '/',
    ),
    AdaptiveRoute(
      page: AuthScreen,
      initial: true,
      path: '/auth',
    ),
    AdaptiveRoute(
      page: BottomNavigator,
      initial: true,
      path: '/bottom_navigator',
    ),
  ],
)
class $MobileAppRouter {}
