import 'package:auto_route/annotations.dart';
import 'package:libary_messaging_system/screens/add_broadcast_screen/add_broadcast_screen.dart';
import 'package:libary_messaging_system/screens/home_screen/home_screen.dart';
import 'package:libary_messaging_system/screens/splash_screen.dart';
import 'package:libary_messaging_system/screens/authentication/login/login_screen.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(page: HomeScreen),
    AutoRoute(page: LoginScreen),
    AutoRoute(page: AddBroadcastScreen),
    AutoRoute(page: SplashScreen, initial: true),
  ],
)
class $AppRouter {}
