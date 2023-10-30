// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i4;
import 'package:hims/features/signup/otpView.dart' as _i1;
import 'package:hims/features/signup/signup.dart' as _i2;
import 'package:hims/features/userDetail/UserDetailTabView.dart' as _i3;

abstract class $AppRouter extends _i4.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i4.PageFactory> pagesMap = {
    OTPView.name: (routeData) {
      return _i4.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.OTPView(),
      );
    },
    SignUp.name: (routeData) {
      return _i4.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.SignUp(),
      );
    },
    UserDetailTabView.name: (routeData) {
      return _i4.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.UserDetailTabView(),
      );
    },
  };
}

/// generated route for
/// [_i1.OTPView]
class OTPView extends _i4.PageRouteInfo<void> {
  const OTPView({List<_i4.PageRouteInfo>? children})
      : super(
          OTPView.name,
          initialChildren: children,
        );

  static const String name = 'OTPView';

  static const _i4.PageInfo<void> page = _i4.PageInfo<void>(name);
}

/// generated route for
/// [_i2.SignUp]
class SignUp extends _i4.PageRouteInfo<void> {
  const SignUp({List<_i4.PageRouteInfo>? children})
      : super(
          SignUp.name,
          initialChildren: children,
        );

  static const String name = 'SignUp';

  static const _i4.PageInfo<void> page = _i4.PageInfo<void>(name);
}

/// generated route for
/// [_i3.UserDetailTabView]
class UserDetailTabView extends _i4.PageRouteInfo<void> {
  const UserDetailTabView({List<_i4.PageRouteInfo>? children})
      : super(
          UserDetailTabView.name,
          initialChildren: children,
        );

  static const String name = 'UserDetailTabView';

  static const _i4.PageInfo<void> page = _i4.PageInfo<void>(name);
}
