// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../bloc/theme_bloc.dart';
import '../screens/login_design_1/login_screen_1.dart';
import '../screens/login_design_1/signup_screen_1.dart';
import '../screens/login_design_2/login_screen_2.dart';
import '../screens/login_design_2/signup_screen_2.dart';
import '../screens/login_design_3/login_screen_3.dart';
import '../screens/login_design_3/signup_screen_3.dart';
import '../screens/login_design_4/login_screen_4.dart';
import '../screens/login_design_4/signup_4.dart';
import '../screens/login_design_4/signup_screen_4.dart';
import '../screens/login_design_5/login_screen_5.dart';
import '../screens/login_design_5/signup_screen_5.dart';
import '../screens/login_design_6/login_screen_6.dart';
import '../screens/login_design_6/signup_screen_6.dart';
import '../screens/login_design_7/register_screen_7.dart';
import '../screens/login_design_8/login_screen_8.dart';
import '../screens/login_design_9/login_screen_9.dart';
import '../screens/login_design_9/signup_screen_9.dart';
import '../screens/root_screen.dart';

class Routes {
  static const String rootScreen = '/';
  static const String loginScreen1 = '/login-screen1';
  static const String signUpScreen1 = '/sign-up-screen1';
  static const String loginScreen2 = '/login-screen2';
  static const String signUpScreen2 = '/sign-up-screen2';
  static const String loginScreen3 = '/login-screen3';
  static const String signUpScreen3 = '/sign-up-screen3';
  static const String loginScreen4 = '/login-screen4';
  static const String signUp4 = '/sign-up4';
  static const String signUpScreen4 = '/sign-up-screen4';
  static const String loginScreen5 = '/login-screen5';
  static const String signUpScreen5 = '/sign-up-screen5';
  static const String loginScreen6 = '/login-screen6';
  static const String signUpScreen6 = '/sign-up-screen6';
  static const String registerScreen7 = '/register-screen7';
  static const String loginScreen8 = '/login-screen8';
  static const String loginScreen9 = '/login-screen9';
  static const String signUpScreen9 = '/sign-up-screen9';
  static const all = <String>{
    rootScreen,
    loginScreen1,
    signUpScreen1,
    loginScreen2,
    signUpScreen2,
    loginScreen3,
    signUpScreen3,
    loginScreen4,
    signUp4,
    signUpScreen4,
    loginScreen5,
    signUpScreen5,
    loginScreen6,
    signUpScreen6,
    registerScreen7,
    loginScreen8,
    loginScreen9,
    signUpScreen9,
  };
}

class AppRouter extends RouterBase {
  @override
  List<RouteDef> get routes => _routes;
  final _routes = <RouteDef>[
    RouteDef(Routes.rootScreen, page: RootScreen),
    RouteDef(Routes.loginScreen1, page: LoginScreen1),
    RouteDef(Routes.signUpScreen1, page: SignUpScreen1),
    RouteDef(Routes.loginScreen2, page: LoginScreen2),
    RouteDef(Routes.signUpScreen2, page: SignUpScreen2),
    RouteDef(Routes.loginScreen3, page: LoginScreen3),
    RouteDef(Routes.signUpScreen3, page: SignUpScreen3),
    RouteDef(Routes.loginScreen4, page: LoginScreen4),
    RouteDef(Routes.signUp4, page: SignUp4),
    RouteDef(Routes.signUpScreen4, page: SignUpScreen4),
    RouteDef(Routes.loginScreen5, page: LoginScreen5),
    RouteDef(Routes.signUpScreen5, page: SignUpScreen5),
    RouteDef(Routes.loginScreen6, page: LoginScreen6),
    RouteDef(Routes.signUpScreen6, page: SignUpScreen6),
    RouteDef(Routes.registerScreen7, page: RegisterScreen7),
    RouteDef(Routes.loginScreen8, page: LoginScreen8),
    RouteDef(Routes.loginScreen9, page: LoginScreen9),
    RouteDef(Routes.signUpScreen9, page: SignUpScreen9),
  ];
  @override
  Map<Type, AutoRouteFactory> get pagesMap => _pagesMap;
  final _pagesMap = <Type, AutoRouteFactory>{
    RootScreen: (data) {
      final args = data.getArgs<RootScreenArguments>(nullOk: false);
      return MaterialPageRoute<dynamic>(
        builder: (context) => RootScreen(themeBloc: args.themeBloc),
        settings: data,
      );
    },
    LoginScreen1: (data) {
      final args = data.getArgs<LoginScreen1Arguments>(nullOk: false);
      return MaterialPageRoute<dynamic>(
        builder: (context) => LoginScreen1(themeBloc: args.themeBloc),
        settings: data,
      );
    },
    SignUpScreen1: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => SignUpScreen1(),
        settings: data,
      );
    },
    LoginScreen2: (data) {
      final args = data.getArgs<LoginScreen2Arguments>(nullOk: false);
      return MaterialPageRoute<dynamic>(
        builder: (context) => LoginScreen2(themeBloc: args.themeBloc),
        settings: data,
      );
    },
    SignUpScreen2: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => SignUpScreen2(),
        settings: data,
      );
    },
    LoginScreen3: (data) {
      final args = data.getArgs<LoginScreen3Arguments>(nullOk: false);
      return MaterialPageRoute<dynamic>(
        builder: (context) => LoginScreen3(themeBloc: args.themeBloc),
        settings: data,
      );
    },
    SignUpScreen3: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => SignUpScreen3(),
        settings: data,
      );
    },
    LoginScreen4: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => LoginScreen4(),
        settings: data,
      );
    },
    SignUp4: (data) {
      final args = data.getArgs<SignUp4Arguments>(nullOk: false);
      return MaterialPageRoute<dynamic>(
        builder: (context) => SignUp4(themeBloc: args.themeBloc),
        settings: data,
      );
    },
    SignUpScreen4: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => SignUpScreen4(),
        settings: data,
      );
    },
    LoginScreen5: (data) {
      final args = data.getArgs<LoginScreen5Arguments>(nullOk: false);
      return MaterialPageRoute<dynamic>(
        builder: (context) => LoginScreen5(themeBloc: args.themeBloc),
        settings: data,
      );
    },
    SignUpScreen5: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => SignUpScreen5(),
        settings: data,
      );
    },
    LoginScreen6: (data) {
      final args = data.getArgs<LoginScreen6Arguments>(nullOk: false);
      return MaterialPageRoute<dynamic>(
        builder: (context) => LoginScreen6(themeBloc: args.themeBloc),
        settings: data,
      );
    },
    SignUpScreen6: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => SignUpScreen6(),
        settings: data,
      );
    },
    RegisterScreen7: (data) {
      final args = data.getArgs<RegisterScreen7Arguments>(nullOk: false);
      return MaterialPageRoute<dynamic>(
        builder: (context) => RegisterScreen7(themeBloc: args.themeBloc),
        settings: data,
      );
    },
    LoginScreen8: (data) {
      final args = data.getArgs<LoginScreen8Arguments>(nullOk: false);
      return MaterialPageRoute<dynamic>(
        builder: (context) => LoginScreen8(themeBloc: args.themeBloc),
        settings: data,
      );
    },
    LoginScreen9: (data) {
      final args = data.getArgs<LoginScreen9Arguments>(nullOk: false);
      return MaterialPageRoute<dynamic>(
        builder: (context) => LoginScreen9(themeBloc: args.themeBloc),
        settings: data,
      );
    },
    SignUpScreen9: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => SignUpScreen9(),
        settings: data,
      );
    },
  };
}

/// ************************************************************************
/// Arguments holder classes
/// *************************************************************************

/// RootScreen arguments holder class
class RootScreenArguments {
  final ThemeBloc themeBloc;
  RootScreenArguments({@required this.themeBloc});
}

/// LoginScreen1 arguments holder class
class LoginScreen1Arguments {
  final ThemeBloc themeBloc;
  LoginScreen1Arguments({@required this.themeBloc});
}

/// LoginScreen2 arguments holder class
class LoginScreen2Arguments {
  final ThemeBloc themeBloc;
  LoginScreen2Arguments({@required this.themeBloc});
}

/// LoginScreen3 arguments holder class
class LoginScreen3Arguments {
  final ThemeBloc themeBloc;
  LoginScreen3Arguments({@required this.themeBloc});
}

/// SignUp4 arguments holder class
class SignUp4Arguments {
  final ThemeBloc themeBloc;
  SignUp4Arguments({@required this.themeBloc});
}

/// LoginScreen5 arguments holder class
class LoginScreen5Arguments {
  final ThemeBloc themeBloc;
  LoginScreen5Arguments({@required this.themeBloc});
}

/// LoginScreen6 arguments holder class
class LoginScreen6Arguments {
  final ThemeBloc themeBloc;
  LoginScreen6Arguments({@required this.themeBloc});
}

/// RegisterScreen7 arguments holder class
class RegisterScreen7Arguments {
  final ThemeBloc themeBloc;
  RegisterScreen7Arguments({@required this.themeBloc});
}

/// LoginScreen8 arguments holder class
class LoginScreen8Arguments {
  final ThemeBloc themeBloc;
  LoginScreen8Arguments({@required this.themeBloc});
}

/// LoginScreen9 arguments holder class
class LoginScreen9Arguments {
  final ThemeBloc themeBloc;
  LoginScreen9Arguments({@required this.themeBloc});
}
