// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i19;
import 'package:flutter/material.dart' as _i20;

import '../bloc/theme_bloc.dart' as _i21;
import '../screens/login_design_1/login_screen_1.dart' as _i2;
import '../screens/login_design_1/signup_screen_1.dart' as _i3;
import '../screens/login_design_2/login_screen_2.dart' as _i4;
import '../screens/login_design_2/signup_screen_2.dart' as _i5;
import '../screens/login_design_3/login_screen_3.dart' as _i6;
import '../screens/login_design_3/signup_screen_3.dart' as _i7;
import '../screens/login_design_4/login_screen_4.dart' as _i8;
import '../screens/login_design_4/signup_4.dart' as _i9;
import '../screens/login_design_4/signup_screen_4.dart' as _i10;
import '../screens/login_design_5/login_screen_5.dart' as _i11;
import '../screens/login_design_5/signup_screen_5.dart' as _i12;
import '../screens/login_design_6/login_screen_6.dart' as _i13;
import '../screens/login_design_6/signup_screen_6.dart' as _i14;
import '../screens/login_design_7/register_screen_7.dart' as _i15;
import '../screens/login_design_8/login_screen_8.dart' as _i16;
import '../screens/login_design_9/login_screen_9.dart' as _i17;
import '../screens/login_design_9/signup_screen_9.dart' as _i18;
import '../screens/root_screen.dart' as _i1;

class AppRouter extends _i19.RootStackRouter {
  AppRouter([_i20.GlobalKey<_i20.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i19.PageFactory> pagesMap = {
    RootScreenRoute.name: (routeData) {
      final args = routeData.argsAs<RootScreenRouteArgs>();
      return _i19.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i1.RootScreen(themeBloc: args.themeBloc));
    },
    LoginScreen1Route.name: (routeData) {
      final args = routeData.argsAs<LoginScreen1RouteArgs>(
          orElse: () => const LoginScreen1RouteArgs());
      return _i19.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i2.LoginScreen1(themeBloc: args.themeBloc));
    },
    SignUpScreen1Route.name: (routeData) {
      return _i19.MaterialPageX<dynamic>(
          routeData: routeData, child: _i3.SignUpScreen1());
    },
    LoginScreen2Route.name: (routeData) {
      final args = routeData.argsAs<LoginScreen2RouteArgs>(
          orElse: () => const LoginScreen2RouteArgs());
      return _i19.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i4.LoginScreen2(themeBloc: args.themeBloc));
    },
    SignUpScreen2Route.name: (routeData) {
      return _i19.MaterialPageX<dynamic>(
          routeData: routeData, child: _i5.SignUpScreen2());
    },
    LoginScreen3Route.name: (routeData) {
      final args = routeData.argsAs<LoginScreen3RouteArgs>(
          orElse: () => const LoginScreen3RouteArgs());
      return _i19.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i6.LoginScreen3(themeBloc: args.themeBloc));
    },
    SignUpScreen3Route.name: (routeData) {
      return _i19.MaterialPageX<dynamic>(
          routeData: routeData, child: _i7.SignUpScreen3());
    },
    LoginScreen4Route.name: (routeData) {
      return _i19.MaterialPageX<dynamic>(
          routeData: routeData, child: _i8.LoginScreen4());
    },
    SignUp4Route.name: (routeData) {
      final args = routeData.argsAs<SignUp4RouteArgs>();
      return _i19.MaterialPageX<dynamic>(
          routeData: routeData, child: _i9.SignUp4(themeBloc: args.themeBloc));
    },
    SignUpScreen4Route.name: (routeData) {
      return _i19.MaterialPageX<dynamic>(
          routeData: routeData, child: _i10.SignUpScreen4());
    },
    LoginScreen5Route.name: (routeData) {
      final args = routeData.argsAs<LoginScreen5RouteArgs>();
      return _i19.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i11.LoginScreen5(themeBloc: args.themeBloc));
    },
    SignUpScreen5Route.name: (routeData) {
      return _i19.MaterialPageX<dynamic>(
          routeData: routeData, child: _i12.SignUpScreen5());
    },
    LoginScreen6Route.name: (routeData) {
      final args = routeData.argsAs<LoginScreen6RouteArgs>();
      return _i19.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i13.LoginScreen6(themeBloc: args.themeBloc));
    },
    SignUpScreen6Route.name: (routeData) {
      return _i19.MaterialPageX<dynamic>(
          routeData: routeData, child: _i14.SignUpScreen6());
    },
    RegisterScreen7Route.name: (routeData) {
      final args = routeData.argsAs<RegisterScreen7RouteArgs>();
      return _i19.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i15.RegisterScreen7(themeBloc: args.themeBloc));
    },
    LoginScreen8Route.name: (routeData) {
      final args = routeData.argsAs<LoginScreen8RouteArgs>();
      return _i19.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i16.LoginScreen8(themeBloc: args.themeBloc));
    },
    LoginScreen9Route.name: (routeData) {
      final args = routeData.argsAs<LoginScreen9RouteArgs>();
      return _i19.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i17.LoginScreen9(themeBloc: args.themeBloc));
    },
    SignUpScreen9Route.name: (routeData) {
      return _i19.MaterialPageX<dynamic>(
          routeData: routeData, child: _i18.SignUpScreen9());
    }
  };

  @override
  List<_i19.RouteConfig> get routes => [
        _i19.RouteConfig(RootScreenRoute.name, path: '/'),
        _i19.RouteConfig(LoginScreen1Route.name, path: '/login-screen1'),
        _i19.RouteConfig(SignUpScreen1Route.name, path: '/sign-up-screen1'),
        _i19.RouteConfig(LoginScreen2Route.name, path: '/login-screen2'),
        _i19.RouteConfig(SignUpScreen2Route.name, path: '/sign-up-screen2'),
        _i19.RouteConfig(LoginScreen3Route.name, path: '/login-screen3'),
        _i19.RouteConfig(SignUpScreen3Route.name, path: '/sign-up-screen3'),
        _i19.RouteConfig(LoginScreen4Route.name, path: '/login-screen4'),
        _i19.RouteConfig(SignUp4Route.name, path: '/sign-up4'),
        _i19.RouteConfig(SignUpScreen4Route.name, path: '/sign-up-screen4'),
        _i19.RouteConfig(LoginScreen5Route.name, path: '/login-screen5'),
        _i19.RouteConfig(SignUpScreen5Route.name, path: '/sign-up-screen5'),
        _i19.RouteConfig(LoginScreen6Route.name, path: '/login-screen6'),
        _i19.RouteConfig(SignUpScreen6Route.name, path: '/sign-up-screen6'),
        _i19.RouteConfig(RegisterScreen7Route.name, path: '/register-screen7'),
        _i19.RouteConfig(LoginScreen8Route.name, path: '/login-screen8'),
        _i19.RouteConfig(LoginScreen9Route.name, path: '/login-screen9'),
        _i19.RouteConfig(SignUpScreen9Route.name, path: '/sign-up-screen9')
      ];
}

/// generated route for
/// [_i1.RootScreen]
class RootScreenRoute extends _i19.PageRouteInfo<RootScreenRouteArgs> {
  RootScreenRoute({required _i21.ThemeBloc themeBloc})
      : super(RootScreenRoute.name,
            path: '/', args: RootScreenRouteArgs(themeBloc: themeBloc));

  static const String name = 'RootScreenRoute';
}

class RootScreenRouteArgs {
  const RootScreenRouteArgs({required this.themeBloc});

  final _i21.ThemeBloc themeBloc;

  @override
  String toString() {
    return 'RootScreenRouteArgs{themeBloc: $themeBloc}';
  }
}

/// generated route for
/// [_i2.LoginScreen1]
class LoginScreen1Route extends _i19.PageRouteInfo<LoginScreen1RouteArgs> {
  LoginScreen1Route({_i21.ThemeBloc? themeBloc})
      : super(LoginScreen1Route.name,
            path: '/login-screen1',
            args: LoginScreen1RouteArgs(themeBloc: themeBloc));

  static const String name = 'LoginScreen1Route';
}

class LoginScreen1RouteArgs {
  const LoginScreen1RouteArgs({this.themeBloc});

  final _i21.ThemeBloc? themeBloc;

  @override
  String toString() {
    return 'LoginScreen1RouteArgs{themeBloc: $themeBloc}';
  }
}

/// generated route for
/// [_i3.SignUpScreen1]
class SignUpScreen1Route extends _i19.PageRouteInfo<void> {
  const SignUpScreen1Route()
      : super(SignUpScreen1Route.name, path: '/sign-up-screen1');

  static const String name = 'SignUpScreen1Route';
}

/// generated route for
/// [_i4.LoginScreen2]
class LoginScreen2Route extends _i19.PageRouteInfo<LoginScreen2RouteArgs> {
  LoginScreen2Route({_i21.ThemeBloc? themeBloc})
      : super(LoginScreen2Route.name,
            path: '/login-screen2',
            args: LoginScreen2RouteArgs(themeBloc: themeBloc));

  static const String name = 'LoginScreen2Route';
}

class LoginScreen2RouteArgs {
  const LoginScreen2RouteArgs({this.themeBloc});

  final _i21.ThemeBloc? themeBloc;

  @override
  String toString() {
    return 'LoginScreen2RouteArgs{themeBloc: $themeBloc}';
  }
}

/// generated route for
/// [_i5.SignUpScreen2]
class SignUpScreen2Route extends _i19.PageRouteInfo<void> {
  const SignUpScreen2Route()
      : super(SignUpScreen2Route.name, path: '/sign-up-screen2');

  static const String name = 'SignUpScreen2Route';
}

/// generated route for
/// [_i6.LoginScreen3]
class LoginScreen3Route extends _i19.PageRouteInfo<LoginScreen3RouteArgs> {
  LoginScreen3Route({_i21.ThemeBloc? themeBloc})
      : super(LoginScreen3Route.name,
            path: '/login-screen3',
            args: LoginScreen3RouteArgs(themeBloc: themeBloc));

  static const String name = 'LoginScreen3Route';
}

class LoginScreen3RouteArgs {
  const LoginScreen3RouteArgs({this.themeBloc});

  final _i21.ThemeBloc? themeBloc;

  @override
  String toString() {
    return 'LoginScreen3RouteArgs{themeBloc: $themeBloc}';
  }
}

/// generated route for
/// [_i7.SignUpScreen3]
class SignUpScreen3Route extends _i19.PageRouteInfo<void> {
  const SignUpScreen3Route()
      : super(SignUpScreen3Route.name, path: '/sign-up-screen3');

  static const String name = 'SignUpScreen3Route';
}

/// generated route for
/// [_i8.LoginScreen4]
class LoginScreen4Route extends _i19.PageRouteInfo<void> {
  const LoginScreen4Route()
      : super(LoginScreen4Route.name, path: '/login-screen4');

  static const String name = 'LoginScreen4Route';
}

/// generated route for
/// [_i9.SignUp4]
class SignUp4Route extends _i19.PageRouteInfo<SignUp4RouteArgs> {
  SignUp4Route({required _i21.ThemeBloc themeBloc})
      : super(SignUp4Route.name,
            path: '/sign-up4', args: SignUp4RouteArgs(themeBloc: themeBloc));

  static const String name = 'SignUp4Route';
}

class SignUp4RouteArgs {
  const SignUp4RouteArgs({required this.themeBloc});

  final _i21.ThemeBloc themeBloc;

  @override
  String toString() {
    return 'SignUp4RouteArgs{themeBloc: $themeBloc}';
  }
}

/// generated route for
/// [_i10.SignUpScreen4]
class SignUpScreen4Route extends _i19.PageRouteInfo<void> {
  const SignUpScreen4Route()
      : super(SignUpScreen4Route.name, path: '/sign-up-screen4');

  static const String name = 'SignUpScreen4Route';
}

/// generated route for
/// [_i11.LoginScreen5]
class LoginScreen5Route extends _i19.PageRouteInfo<LoginScreen5RouteArgs> {
  LoginScreen5Route({required _i21.ThemeBloc themeBloc})
      : super(LoginScreen5Route.name,
            path: '/login-screen5',
            args: LoginScreen5RouteArgs(themeBloc: themeBloc));

  static const String name = 'LoginScreen5Route';
}

class LoginScreen5RouteArgs {
  const LoginScreen5RouteArgs({required this.themeBloc});

  final _i21.ThemeBloc themeBloc;

  @override
  String toString() {
    return 'LoginScreen5RouteArgs{themeBloc: $themeBloc}';
  }
}

/// generated route for
/// [_i12.SignUpScreen5]
class SignUpScreen5Route extends _i19.PageRouteInfo<void> {
  const SignUpScreen5Route()
      : super(SignUpScreen5Route.name, path: '/sign-up-screen5');

  static const String name = 'SignUpScreen5Route';
}

/// generated route for
/// [_i13.LoginScreen6]
class LoginScreen6Route extends _i19.PageRouteInfo<LoginScreen6RouteArgs> {
  LoginScreen6Route({required _i21.ThemeBloc themeBloc})
      : super(LoginScreen6Route.name,
            path: '/login-screen6',
            args: LoginScreen6RouteArgs(themeBloc: themeBloc));

  static const String name = 'LoginScreen6Route';
}

class LoginScreen6RouteArgs {
  const LoginScreen6RouteArgs({required this.themeBloc});

  final _i21.ThemeBloc themeBloc;

  @override
  String toString() {
    return 'LoginScreen6RouteArgs{themeBloc: $themeBloc}';
  }
}

/// generated route for
/// [_i14.SignUpScreen6]
class SignUpScreen6Route extends _i19.PageRouteInfo<void> {
  const SignUpScreen6Route()
      : super(SignUpScreen6Route.name, path: '/sign-up-screen6');

  static const String name = 'SignUpScreen6Route';
}

/// generated route for
/// [_i15.RegisterScreen7]
class RegisterScreen7Route
    extends _i19.PageRouteInfo<RegisterScreen7RouteArgs> {
  RegisterScreen7Route({required _i21.ThemeBloc themeBloc})
      : super(RegisterScreen7Route.name,
            path: '/register-screen7',
            args: RegisterScreen7RouteArgs(themeBloc: themeBloc));

  static const String name = 'RegisterScreen7Route';
}

class RegisterScreen7RouteArgs {
  const RegisterScreen7RouteArgs({required this.themeBloc});

  final _i21.ThemeBloc themeBloc;

  @override
  String toString() {
    return 'RegisterScreen7RouteArgs{themeBloc: $themeBloc}';
  }
}

/// generated route for
/// [_i16.LoginScreen8]
class LoginScreen8Route extends _i19.PageRouteInfo<LoginScreen8RouteArgs> {
  LoginScreen8Route({required _i21.ThemeBloc themeBloc})
      : super(LoginScreen8Route.name,
            path: '/login-screen8',
            args: LoginScreen8RouteArgs(themeBloc: themeBloc));

  static const String name = 'LoginScreen8Route';
}

class LoginScreen8RouteArgs {
  const LoginScreen8RouteArgs({required this.themeBloc});

  final _i21.ThemeBloc themeBloc;

  @override
  String toString() {
    return 'LoginScreen8RouteArgs{themeBloc: $themeBloc}';
  }
}

/// generated route for
/// [_i17.LoginScreen9]
class LoginScreen9Route extends _i19.PageRouteInfo<LoginScreen9RouteArgs> {
  LoginScreen9Route({required _i21.ThemeBloc themeBloc})
      : super(LoginScreen9Route.name,
            path: '/login-screen9',
            args: LoginScreen9RouteArgs(themeBloc: themeBloc));

  static const String name = 'LoginScreen9Route';
}

class LoginScreen9RouteArgs {
  const LoginScreen9RouteArgs({required this.themeBloc});

  final _i21.ThemeBloc themeBloc;

  @override
  String toString() {
    return 'LoginScreen9RouteArgs{themeBloc: $themeBloc}';
  }
}

/// generated route for
/// [_i18.SignUpScreen9]
class SignUpScreen9Route extends _i19.PageRouteInfo<void> {
  const SignUpScreen9Route()
      : super(SignUpScreen9Route.name, path: '/sign-up-screen9');

  static const String name = 'SignUpScreen9Route';
}
