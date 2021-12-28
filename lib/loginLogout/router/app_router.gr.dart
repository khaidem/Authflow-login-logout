// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:auto_route/auto_route.dart' as _i3;
import 'package:flutter/material.dart' as _i4;

import '../authflow/auth_flow.dart' as _i1;
import '../pages/pages.dart' as _i2;

class AppRouter extends _i3.RootStackRouter {
  AppRouter([_i4.GlobalKey<_i4.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i3.PageFactory> pagesMap = {
    AuthFlow.name: (routeData) {
      return _i3.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.AuthFlow());
    },
    LoginRoute.name: (routeData) {
      return _i3.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i2.LoginPage());
    },
    SigupRoute.name: (routeData) {
      return _i3.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i2.SigupPage());
    },
    HomeRoute.name: (routeData) {
      return _i3.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i2.HomePage());
    }
  };

  @override
  List<_i3.RouteConfig> get routes => [
        _i3.RouteConfig('/#redirect',
            path: '/', redirectTo: '/login', fullMatch: true),
        _i3.RouteConfig(AuthFlow.name, path: '/login', children: [
          _i3.RouteConfig(LoginRoute.name,
              path: 'login-page', parent: AuthFlow.name),
          _i3.RouteConfig(SigupRoute.name,
              path: 'sigup-page', parent: AuthFlow.name),
          _i3.RouteConfig(HomeRoute.name,
              path: 'home-page', parent: AuthFlow.name)
        ])
      ];
}

/// generated route for
/// [_i1.AuthFlow]
class AuthFlow extends _i3.PageRouteInfo<void> {
  const AuthFlow({List<_i3.PageRouteInfo>? children})
      : super(AuthFlow.name, path: '/login', initialChildren: children);

  static const String name = 'AuthFlow';
}

/// generated route for
/// [_i2.LoginPage]
class LoginRoute extends _i3.PageRouteInfo<void> {
  const LoginRoute() : super(LoginRoute.name, path: 'login-page');

  static const String name = 'LoginRoute';
}

/// generated route for
/// [_i2.SigupPage]
class SigupRoute extends _i3.PageRouteInfo<void> {
  const SigupRoute() : super(SigupRoute.name, path: 'sigup-page');

  static const String name = 'SigupRoute';
}

/// generated route for
/// [_i2.HomePage]
class HomeRoute extends _i3.PageRouteInfo<void> {
  const HomeRoute() : super(HomeRoute.name, path: 'home-page');

  static const String name = 'HomeRoute';
}
