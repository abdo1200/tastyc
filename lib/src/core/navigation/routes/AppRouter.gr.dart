// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i9;
import 'package:flutter/material.dart' as _i10;
import 'package:tastyc/features/auth/presentation/auth_container.dart' as _i6;
import 'package:tastyc/features/auth/presentation/pages/otp.dart' as _i8;
import 'package:tastyc/features/auth/presentation/pages/sign.dart' as _i7;
import 'package:tastyc/features/home/presentation/home_container.dart' as _i2;
import 'package:tastyc/features/home/presentation/home_page/home_page.dart'
    as _i3;
import 'package:tastyc/features/home/presentation/notification/notifications_page.dart'
    as _i4;
import 'package:tastyc/features/home/presentation/orders/orders_page.dart'
    as _i5;
import 'package:tastyc/features/home/presentation/settings/settings.dart'
    as _i1;

abstract class $AppRouter extends _i9.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i9.PageFactory> pagesMap = {
    SettingsRoute.name: (routeData) {
      return _i9.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.SettingsPage(),
      );
    },
    HomeContainerRoute.name: (routeData) {
      final args = routeData.argsAs<HomeContainerRouteArgs>(
          orElse: () => const HomeContainerRouteArgs());
      return _i9.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i2.HomeContainerPage(
          key: args.key,
          callDialog: args.callDialog,
        ),
      );
    },
    HomeRoute.name: (routeData) {
      return _i9.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.HomePage(),
      );
    },
    NotificationRoute.name: (routeData) {
      return _i9.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i4.NotificationPage(),
      );
    },
    OrdersRoute.name: (routeData) {
      return _i9.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i5.OrdersPage(),
      );
    },
    AuthContainer.name: (routeData) {
      return _i9.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i6.AuthContainer(),
      );
    },
    SignRoute.name: (routeData) {
      final args =
          routeData.argsAs<SignRouteArgs>(orElse: () => const SignRouteArgs());
      return _i9.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i7.SignPage(key: args.key),
      );
    },
    OtpRoute.name: (routeData) {
      final args =
          routeData.argsAs<OtpRouteArgs>(orElse: () => const OtpRouteArgs());
      return _i9.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i8.OtpPage(
          key: args.key,
          type: args.type,
        ),
      );
    },
  };
}

/// generated route for
/// [_i1.SettingsPage]
class SettingsRoute extends _i9.PageRouteInfo<void> {
  const SettingsRoute({List<_i9.PageRouteInfo>? children})
      : super(
          SettingsRoute.name,
          initialChildren: children,
        );

  static const String name = 'SettingsRoute';

  static const _i9.PageInfo<void> page = _i9.PageInfo<void>(name);
}

/// generated route for
/// [_i2.HomeContainerPage]
class HomeContainerRoute extends _i9.PageRouteInfo<HomeContainerRouteArgs> {
  HomeContainerRoute({
    _i10.Key? key,
    dynamic Function(_i10.BuildContext)? callDialog,
    List<_i9.PageRouteInfo>? children,
  }) : super(
          HomeContainerRoute.name,
          args: HomeContainerRouteArgs(
            key: key,
            callDialog: callDialog,
          ),
          initialChildren: children,
        );

  static const String name = 'HomeContainerRoute';

  static const _i9.PageInfo<HomeContainerRouteArgs> page =
      _i9.PageInfo<HomeContainerRouteArgs>(name);
}

class HomeContainerRouteArgs {
  const HomeContainerRouteArgs({
    this.key,
    this.callDialog,
  });

  final _i10.Key? key;

  final dynamic Function(_i10.BuildContext)? callDialog;

  @override
  String toString() {
    return 'HomeContainerRouteArgs{key: $key, callDialog: $callDialog}';
  }
}

/// generated route for
/// [_i3.HomePage]
class HomeRoute extends _i9.PageRouteInfo<void> {
  const HomeRoute({List<_i9.PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static const _i9.PageInfo<void> page = _i9.PageInfo<void>(name);
}

/// generated route for
/// [_i4.NotificationPage]
class NotificationRoute extends _i9.PageRouteInfo<void> {
  const NotificationRoute({List<_i9.PageRouteInfo>? children})
      : super(
          NotificationRoute.name,
          initialChildren: children,
        );

  static const String name = 'NotificationRoute';

  static const _i9.PageInfo<void> page = _i9.PageInfo<void>(name);
}

/// generated route for
/// [_i5.OrdersPage]
class OrdersRoute extends _i9.PageRouteInfo<void> {
  const OrdersRoute({List<_i9.PageRouteInfo>? children})
      : super(
          OrdersRoute.name,
          initialChildren: children,
        );

  static const String name = 'OrdersRoute';

  static const _i9.PageInfo<void> page = _i9.PageInfo<void>(name);
}

/// generated route for
/// [_i6.AuthContainer]
class AuthContainer extends _i9.PageRouteInfo<void> {
  const AuthContainer({List<_i9.PageRouteInfo>? children})
      : super(
          AuthContainer.name,
          initialChildren: children,
        );

  static const String name = 'AuthContainer';

  static const _i9.PageInfo<void> page = _i9.PageInfo<void>(name);
}

/// generated route for
/// [_i7.SignPage]
class SignRoute extends _i9.PageRouteInfo<SignRouteArgs> {
  SignRoute({
    _i10.Key? key,
    List<_i9.PageRouteInfo>? children,
  }) : super(
          SignRoute.name,
          args: SignRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'SignRoute';

  static const _i9.PageInfo<SignRouteArgs> page =
      _i9.PageInfo<SignRouteArgs>(name);
}

class SignRouteArgs {
  const SignRouteArgs({this.key});

  final _i10.Key? key;

  @override
  String toString() {
    return 'SignRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i8.OtpPage]
class OtpRoute extends _i9.PageRouteInfo<OtpRouteArgs> {
  OtpRoute({
    _i10.Key? key,
    int? type,
    List<_i9.PageRouteInfo>? children,
  }) : super(
          OtpRoute.name,
          args: OtpRouteArgs(
            key: key,
            type: type,
          ),
          initialChildren: children,
        );

  static const String name = 'OtpRoute';

  static const _i9.PageInfo<OtpRouteArgs> page =
      _i9.PageInfo<OtpRouteArgs>(name);
}

class OtpRouteArgs {
  const OtpRouteArgs({
    this.key,
    this.type,
  });

  final _i10.Key? key;

  final int? type;

  @override
  String toString() {
    return 'OtpRouteArgs{key: $key, type: $type}';
  }
}
