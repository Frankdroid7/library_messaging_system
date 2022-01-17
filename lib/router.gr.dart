// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i5;
import 'package:flutter/material.dart' as _i6;

import 'screens/add_broadcast_screen/add_broadcast_screen.dart' as _i3;
import 'screens/authentication/login/login_screen.dart' as _i2;
import 'screens/home_screen/home_screen.dart' as _i1;
import 'screens/splash_screen.dart' as _i4;

class AppRouter extends _i5.RootStackRouter {
  AppRouter([_i6.GlobalKey<_i6.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i5.PageFactory> pagesMap = {
    HomeScreen.name: (routeData) {
      return _i5.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.HomeScreen());
    },
    LoginScreen.name: (routeData) {
      return _i5.MaterialPageX<dynamic>(
          routeData: routeData, child: _i2.LoginScreen());
    },
    AddBroadcastScreen.name: (routeData) {
      final args = routeData.argsAs<AddBroadcastScreenArgs>(
          orElse: () => const AddBroadcastScreenArgs());
      return _i5.MaterialPageX<dynamic>(
          routeData: routeData, child: _i3.AddBroadcastScreen(key: args.key));
    },
    SplashScreen.name: (routeData) {
      return _i5.MaterialPageX<dynamic>(
          routeData: routeData, child: _i4.SplashScreen());
    }
  };

  @override
  List<_i5.RouteConfig> get routes => [
        _i5.RouteConfig(HomeScreen.name, path: '/home-screen'),
        _i5.RouteConfig(LoginScreen.name, path: '/login-screen'),
        _i5.RouteConfig(AddBroadcastScreen.name, path: '/add-broadcast-screen'),
        _i5.RouteConfig(SplashScreen.name, path: '/')
      ];
}

/// generated route for
/// [_i1.HomeScreen]
class HomeScreen extends _i5.PageRouteInfo<void> {
  const HomeScreen() : super(HomeScreen.name, path: '/home-screen');

  static const String name = 'HomeScreen';
}

/// generated route for
/// [_i2.LoginScreen]
class LoginScreen extends _i5.PageRouteInfo<void> {
  const LoginScreen() : super(LoginScreen.name, path: '/login-screen');

  static const String name = 'LoginScreen';
}

/// generated route for
/// [_i3.AddBroadcastScreen]
class AddBroadcastScreen extends _i5.PageRouteInfo<AddBroadcastScreenArgs> {
  AddBroadcastScreen({_i6.Key? key})
      : super(AddBroadcastScreen.name,
            path: '/add-broadcast-screen',
            args: AddBroadcastScreenArgs(key: key));

  static const String name = 'AddBroadcastScreen';
}

class AddBroadcastScreenArgs {
  const AddBroadcastScreenArgs({this.key});

  final _i6.Key? key;

  @override
  String toString() {
    return 'AddBroadcastScreenArgs{key: $key}';
  }
}

/// generated route for
/// [_i4.SplashScreen]
class SplashScreen extends _i5.PageRouteInfo<void> {
  const SplashScreen() : super(SplashScreen.name, path: '/');

  static const String name = 'SplashScreen';
}
