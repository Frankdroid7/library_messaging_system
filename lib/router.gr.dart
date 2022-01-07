// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:auto_route/auto_route.dart' as _i1;
import 'package:flutter/material.dart' as _i2;

import 'screens/add_broadcast_screen/add_broadcast_screen.dart' as _i5;
import 'screens/authentication/login/login_screen.dart' as _i4;
import 'screens/home_screen/home_screen.dart' as _i3;
import 'screens/splash_screen.dart' as _i6;

class AppRouter extends _i1.RootStackRouter {
  AppRouter([_i2.GlobalKey<_i2.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i1.PageFactory> pagesMap = {
    HomeScreen.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return const _i3.HomeScreen();
        }),
    LoginScreen.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return _i4.LoginScreen();
        }),
    AddBroadcastScreen.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return const _i5.AddBroadcastScreen();
        }),
    SplashScreen.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return _i6.SplashScreen();
        })
  };

  @override
  List<_i1.RouteConfig> get routes => [
        _i1.RouteConfig(HomeScreen.name, path: '/home-screen'),
        _i1.RouteConfig(LoginScreen.name, path: '/login-screen'),
        _i1.RouteConfig(AddBroadcastScreen.name, path: '/add-broadcast-screen'),
        _i1.RouteConfig(SplashScreen.name, path: '/')
      ];
}

class HomeScreen extends _i1.PageRouteInfo {
  const HomeScreen() : super(name, path: '/home-screen');

  static const String name = 'HomeScreen';
}

class LoginScreen extends _i1.PageRouteInfo {
  const LoginScreen() : super(name, path: '/login-screen');

  static const String name = 'LoginScreen';
}

class AddBroadcastScreen extends _i1.PageRouteInfo {
  const AddBroadcastScreen() : super(name, path: '/add-broadcast-screen');

  static const String name = 'AddBroadcastScreen';
}

class SplashScreen extends _i1.PageRouteInfo {
  const SplashScreen() : super(name, path: '/');

  static const String name = 'SplashScreen';
}
