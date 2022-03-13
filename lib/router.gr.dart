// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i6;
import 'package:flutter/material.dart' as _i7;

import 'screens/add_broadcast/add_broadcast_screen.dart' as _i3;
import 'screens/authentication/login/login_screen.dart' as _i2;
import 'screens/general_broadcast/general_broadcast_screen.dart' as _i4;
import 'screens/home_screen/home_screen.dart' as _i1;
import 'screens/splash_screen.dart' as _i5;

class AppRouter extends _i6.RootStackRouter {
  AppRouter([_i7.GlobalKey<_i7.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i6.PageFactory> pagesMap = {
    HomeScreen.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.HomeScreen());
    },
    LoginScreen.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
          routeData: routeData, child: _i2.LoginScreen());
    },
    AddBroadcastScreen.name: (routeData) {
      final args = routeData.argsAs<AddBroadcastScreenArgs>(
          orElse: () => const AddBroadcastScreenArgs());
      return _i6.MaterialPageX<dynamic>(
          routeData: routeData, child: _i3.AddBroadcastScreen(key: args.key));
    },
    GeneralBroadcastScreen.name: (routeData) {
      final args = routeData.argsAs<GeneralBroadcastScreenArgs>();
      return _i6.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i4.GeneralBroadcastScreen(
              key: args.key, departmentId: args.departmentId));
    },
    SplashScreen.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
          routeData: routeData, child: _i5.SplashScreen());
    }
  };

  @override
  List<_i6.RouteConfig> get routes => [
        _i6.RouteConfig(HomeScreen.name, path: '/home-screen'),
        _i6.RouteConfig(LoginScreen.name, path: '/login-screen'),
        _i6.RouteConfig(AddBroadcastScreen.name, path: '/add-broadcast-screen'),
        _i6.RouteConfig(GeneralBroadcastScreen.name,
            path: '/general-broadcast-screen'),
        _i6.RouteConfig(SplashScreen.name, path: '/')
      ];
}

/// generated route for
/// [_i1.HomeScreen]
class HomeScreen extends _i6.PageRouteInfo<void> {
  const HomeScreen() : super(HomeScreen.name, path: '/home-screen');

  static const String name = 'HomeScreen';
}

/// generated route for
/// [_i2.LoginScreen]
class LoginScreen extends _i6.PageRouteInfo<void> {
  const LoginScreen() : super(LoginScreen.name, path: '/login-screen');

  static const String name = 'LoginScreen';
}

/// generated route for
/// [_i3.AddBroadcastScreen]
class AddBroadcastScreen extends _i6.PageRouteInfo<AddBroadcastScreenArgs> {
  AddBroadcastScreen({_i7.Key? key})
      : super(AddBroadcastScreen.name,
            path: '/add-broadcast-screen',
            args: AddBroadcastScreenArgs(key: key));

  static const String name = 'AddBroadcastScreen';
}

class AddBroadcastScreenArgs {
  const AddBroadcastScreenArgs({this.key});

  final _i7.Key? key;

  @override
  String toString() {
    return 'AddBroadcastScreenArgs{key: $key}';
  }
}

/// generated route for
/// [_i4.GeneralBroadcastScreen]
class GeneralBroadcastScreen
    extends _i6.PageRouteInfo<GeneralBroadcastScreenArgs> {
  GeneralBroadcastScreen({_i7.Key? key, required String departmentId})
      : super(GeneralBroadcastScreen.name,
            path: '/general-broadcast-screen',
            args: GeneralBroadcastScreenArgs(
                key: key, departmentId: departmentId));

  static const String name = 'GeneralBroadcastScreen';
}

class GeneralBroadcastScreenArgs {
  const GeneralBroadcastScreenArgs({this.key, required this.departmentId});

  final _i7.Key? key;

  final String departmentId;

  @override
  String toString() {
    return 'GeneralBroadcastScreenArgs{key: $key, departmentId: $departmentId}';
  }
}

/// generated route for
/// [_i5.SplashScreen]
class SplashScreen extends _i6.PageRouteInfo<void> {
  const SplashScreen() : super(SplashScreen.name, path: '/');

  static const String name = 'SplashScreen';
}
