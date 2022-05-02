// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i2;
import 'package:flutter/material.dart' as _i3;

import '../../features/auth/login/presentation/pages/login_page.dart' as _i1;
import 'auth_guard.dart' as _i4;

class AppRouter extends _i2.RootStackRouter {
  AppRouter(
      {_i3.GlobalKey<_i3.NavigatorState>? navigatorKey,
      required this.authGuard})
      : super(navigatorKey);

  final _i4.AuthGuard authGuard;

  @override
  final Map<String, _i2.PageFactory> pagesMap = {
    LoginPageRoute.name: (routeData) {
      return _i2.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i1.LoginPage());
    }
  };

  @override
  List<_i2.RouteConfig> get routes => [
        _i2.RouteConfig(LoginPageRoute.name, path: '/', guards: [authGuard])
      ];
}

/// generated route for
/// [_i1.LoginPage]
class LoginPageRoute extends _i2.PageRouteInfo<void> {
  const LoginPageRoute() : super(LoginPageRoute.name, path: '/');

  static const String name = 'LoginPageRoute';
}
