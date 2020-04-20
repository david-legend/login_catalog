// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:auto_route/auto_route.dart';
import 'package:logincatalog/screens/login_design_1/login_screen_1.dart';
import 'package:logincatalog/screens/login_design_1/signup_screen_1.dart';

abstract class Routes {
  static const loginScreen1 = '/';
  static const signupScreen1 = '/signup-screen1';
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
        return MaterialPageRoute<dynamic>(
          builder: (_) => LoginScreen1(),
          settings: settings,
        );
      case Routes.signupScreen1:
        return MaterialPageRoute<dynamic>(
          builder: (_) => SignUpScreen1(),
          settings: settings,
        );
      default:
        return unknownRoutePage(settings.name);
    }
  }
}
