// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:auto_route/auto_route.dart';
import 'package:logincatalog/screens/login_design_1/login_screen_1.dart';
import 'package:logincatalog/bloc/theme_bloc.dart';
import 'package:logincatalog/screens/login_design_1/signup_screen_1.dart';
import 'package:logincatalog/screens/login_design_2/login_screen_2.dart';
import 'package:logincatalog/screens/login_design_2/signup_screen_2.dart';
import 'package:logincatalog/screens/login_design_3/signup_screen_3.dart';
import 'package:logincatalog/screens/login_design_3/login_screen_3.dart';

abstract class Routes {
  static const loginScreen1 = '/login-screen1';
  static const signUpScreen1 = '/sign-up-screen1';
  static const loginScreen2 = '/';
  static const signUpScreen2 = '/sign-up-screen2';
  static const signUpScreen3 = '/sign-up-screen3';
  static const loginScreen3 = '/login-screen3';
}

class Router extends RouterBase {
  //This will probably be removed in future versions
  //you should call ExtendedNavigator.ofRouter<Router>() directly
  static ExtendedNavigatorState get navigator =>
      ExtendedNavigator.ofRouter<Router>();

  @override
  Route<dynamic> onGenerateRoute(RouteSettings settings) {
    final args = settings.arguments;
    switch (settings.name) {
      case Routes.loginScreen1:
        if (hasInvalidArgs<LoginScreen1Arguments>(args, isRequired: true)) {
          return misTypedArgsRoute<LoginScreen1Arguments>(args);
        }
        final typedArgs = args as LoginScreen1Arguments;
        return MaterialPageRoute<dynamic>(
          builder: (_) => LoginScreen1(themeBloc: typedArgs.themeBloc),
          settings: settings,
        );
      case Routes.signUpScreen1:
        return MaterialPageRoute<dynamic>(
          builder: (_) => SignUpScreen1(),
          settings: settings,
        );
      case Routes.loginScreen2:
        return MaterialPageRoute<dynamic>(
          builder: (_) => LoginScreen2(),
          settings: settings,
        );
      case Routes.signUpScreen2:
        if (hasInvalidArgs<SignUpScreen2Arguments>(args, isRequired: true)) {
          return misTypedArgsRoute<SignUpScreen2Arguments>(args);
        }
        final typedArgs = args as SignUpScreen2Arguments;
        return MaterialPageRoute<dynamic>(
          builder: (_) => SignUpScreen2(themeBloc: typedArgs.themeBloc),
          settings: settings,
        );
      case Routes.signUpScreen3:
        return MaterialPageRoute<dynamic>(
          builder: (_) => SignUpScreen3(),
          settings: settings,
        );
      case Routes.loginScreen3:
        return MaterialPageRoute<dynamic>(
          builder: (_) => LoginScreen3(),
          settings: settings,
        );
      default:
        return unknownRoutePage(settings.name);
    }
  }
}

//**************************************************************************
// Arguments holder classes
//***************************************************************************

//LoginScreen1 arguments holder class
class LoginScreen1Arguments {
  final ThemeBloc themeBloc;
  LoginScreen1Arguments({@required this.themeBloc});
}

//SignUpScreen2 arguments holder class
class SignUpScreen2Arguments {
  final ThemeBloc themeBloc;
  SignUpScreen2Arguments({@required this.themeBloc});
}
