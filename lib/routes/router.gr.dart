// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:flutter/material.dart' hide Router;
import 'package:flutter/cupertino.dart';
import 'package:auto_route/auto_route.dart';
import 'package:logincatalog/screens/root_screen.dart';
import 'package:logincatalog/bloc/theme_bloc.dart';
import 'package:logincatalog/screens/login_design_1/login_screen_1.dart';
import 'package:logincatalog/screens/login_design_1/signup_screen_1.dart';
import 'package:logincatalog/screens/login_design_2/login_screen_2.dart';
import 'package:logincatalog/screens/login_design_2/signup_screen_2.dart';
import 'package:logincatalog/screens/login_design_3/signup_screen_3.dart';
import 'package:logincatalog/screens/login_design_3/login_screen_3.dart';
import 'package:logincatalog/screens/login_design_4/login_screen_4.dart';
import 'package:logincatalog/screens/login_design_4/signup_4.dart';
import 'package:logincatalog/screens/login_design_4/signup_screen_4.dart';
import 'package:logincatalog/screens/login_design_5/login_screen_5.dart';
import 'package:logincatalog/screens/login_design_5/signup_screen_5.dart';
import 'package:logincatalog/screens/login_design_6/login_screen_6.dart';
import 'package:logincatalog/screens/login_design_6/signup_screen_6.dart';
import 'package:logincatalog/screens/login_design_7/register_screen_7.dart';
import 'package:logincatalog/screens/login_design_8/login_screen_8.dart';
import 'package:logincatalog/screens/login_design_9/login_screen_9.dart';
import 'package:logincatalog/screens/login_design_9/signup_screen_9.dart';

abstract class Routes {
  static const rootScreen = '/';
  static const loginScreen1 = '/login-screen1';
  static const signUpScreen1 = '/sign-up-screen1';
  static const loginScreen2 = '/login-screen2';
  static const signUpScreen2 = '/sign-up-screen2';
  static const signUpScreen3 = '/sign-up-screen3';
  static const loginScreen3 = '/login-screen3';
  static const loginScreen4 = '/login-screen4';
  static const signUp4 = '/sign-up4';
  static const signUpScreen4 = '/sign-up-screen4';
  static const loginScreen5 = '/login-screen5';
  static const signUpScreen5 = '/sign-up-screen5';
  static const loginScreen6 = '/login-screen6';
  static const signUpScreen6 = '/sign-up-screen6';
  static const registerScreen7 = '/register-screen7';
  static const loginScreen8 = '/login-screen8';
  static const loginScreen9 = '/login-screen9';
  static const signUpScreen9 = '/sign-up-screen9';
  static const all = {
    rootScreen,
    loginScreen1,
    signUpScreen1,
    loginScreen2,
    signUpScreen2,
    signUpScreen3,
    loginScreen3,
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

class Router extends RouterBase {
  @override
  Set<String> get allRoutes => Routes.all;

  @Deprecated('call ExtendedNavigator.ofRouter<Router>() directly')
  static ExtendedNavigatorState get navigator =>
      ExtendedNavigator.ofRouter<Router>();

  @override
  Route<dynamic> onGenerateRoute(RouteSettings settings) {
    final args = settings.arguments;
    switch (settings.name) {
      case Routes.rootScreen:
        if (hasInvalidArgs<RootScreenArguments>(args, isRequired: true)) {
          return misTypedArgsRoute<RootScreenArguments>(args);
        }
        final typedArgs = args as RootScreenArguments;
        return MaterialPageRoute<dynamic>(
          builder: (context) => RootScreen(themeBloc: typedArgs.themeBloc),
          settings: settings,
        );
      case Routes.loginScreen1:
        if (hasInvalidArgs<LoginScreen1Arguments>(args, isRequired: true)) {
          return misTypedArgsRoute<LoginScreen1Arguments>(args);
        }
        final typedArgs = args as LoginScreen1Arguments;
        return MaterialPageRoute<dynamic>(
          builder: (context) => LoginScreen1(themeBloc: typedArgs.themeBloc),
          settings: settings,
        );
      case Routes.signUpScreen1:
        return MaterialPageRoute<dynamic>(
          builder: (context) => SignUpScreen1(),
          settings: settings,
        );
      case Routes.loginScreen2:
        if (hasInvalidArgs<LoginScreen2Arguments>(args, isRequired: true)) {
          return misTypedArgsRoute<LoginScreen2Arguments>(args);
        }
        final typedArgs = args as LoginScreen2Arguments;
        return MaterialPageRoute<dynamic>(
          builder: (context) => LoginScreen2(themeBloc: typedArgs.themeBloc),
          settings: settings,
        );
      case Routes.signUpScreen2:
        return MaterialPageRoute<dynamic>(
          builder: (context) => SignUpScreen2(),
          settings: settings,
        );
      case Routes.signUpScreen3:
        return MaterialPageRoute<dynamic>(
          builder: (context) => SignUpScreen3(),
          settings: settings,
        );
      case Routes.loginScreen3:
        if (hasInvalidArgs<LoginScreen3Arguments>(args, isRequired: true)) {
          return misTypedArgsRoute<LoginScreen3Arguments>(args);
        }
        final typedArgs = args as LoginScreen3Arguments;
        return MaterialPageRoute<dynamic>(
          builder: (context) => LoginScreen3(themeBloc: typedArgs.themeBloc),
          settings: settings,
        );
      case Routes.loginScreen4:
        return MaterialPageRoute<dynamic>(
          builder: (context) => LoginScreen4(),
          settings: settings,
        );
      case Routes.signUp4:
        if (hasInvalidArgs<SignUp4Arguments>(args, isRequired: true)) {
          return misTypedArgsRoute<SignUp4Arguments>(args);
        }
        final typedArgs = args as SignUp4Arguments;
        return MaterialPageRoute<dynamic>(
          builder: (context) => SignUp4(themeBloc: typedArgs.themeBloc),
          settings: settings,
        );
      case Routes.signUpScreen4:
        return MaterialPageRoute<dynamic>(
          builder: (context) => SignUpScreen4(),
          settings: settings,
        );
      case Routes.loginScreen5:
        if (hasInvalidArgs<LoginScreen5Arguments>(args, isRequired: true)) {
          return misTypedArgsRoute<LoginScreen5Arguments>(args);
        }
        final typedArgs = args as LoginScreen5Arguments;
        return MaterialPageRoute<dynamic>(
          builder: (context) => LoginScreen5(themeBloc: typedArgs.themeBloc),
          settings: settings,
        );
      case Routes.signUpScreen5:
        return MaterialPageRoute<dynamic>(
          builder: (context) => SignUpScreen5(),
          settings: settings,
        );
      case Routes.loginScreen6:
        if (hasInvalidArgs<LoginScreen6Arguments>(args, isRequired: true)) {
          return misTypedArgsRoute<LoginScreen6Arguments>(args);
        }
        final typedArgs = args as LoginScreen6Arguments;
        return MaterialPageRoute<dynamic>(
          builder: (context) => LoginScreen6(themeBloc: typedArgs.themeBloc),
          settings: settings,
        );
      case Routes.signUpScreen6:
        return MaterialPageRoute<dynamic>(
          builder: (context) => SignUpScreen6(),
          settings: settings,
        );
      case Routes.registerScreen7:
        if (hasInvalidArgs<RegisterScreen7Arguments>(args, isRequired: true)) {
          return misTypedArgsRoute<RegisterScreen7Arguments>(args);
        }
        final typedArgs = args as RegisterScreen7Arguments;
        return MaterialPageRoute<dynamic>(
          builder: (context) => RegisterScreen7(themeBloc: typedArgs.themeBloc),
          settings: settings,
        );
      case Routes.loginScreen8:
        if (hasInvalidArgs<LoginScreen8Arguments>(args, isRequired: true)) {
          return misTypedArgsRoute<LoginScreen8Arguments>(args);
        }
        final typedArgs = args as LoginScreen8Arguments;
        return MaterialPageRoute<dynamic>(
          builder: (context) => LoginScreen8(themeBloc: typedArgs.themeBloc),
          settings: settings,
        );
      case Routes.loginScreen9:
        if (hasInvalidArgs<LoginScreen9Arguments>(args, isRequired: true)) {
          return misTypedArgsRoute<LoginScreen9Arguments>(args);
        }
        final typedArgs = args as LoginScreen9Arguments;
        return MaterialPageRoute<dynamic>(
          builder: (context) => LoginScreen9(themeBloc: typedArgs.themeBloc),
          settings: settings,
        );
      case Routes.signUpScreen9:
        return MaterialPageRoute<dynamic>(
          builder: (context) => SignUpScreen9(),
          settings: settings,
        );
      default:
        return unknownRoutePage(settings.name);
    }
  }
}

// *************************************************************************
// Arguments holder classes
// **************************************************************************

//RootScreen arguments holder class
class RootScreenArguments {
  final ThemeBloc themeBloc;
  RootScreenArguments({@required this.themeBloc});
}

//LoginScreen1 arguments holder class
class LoginScreen1Arguments {
  final ThemeBloc themeBloc;
  LoginScreen1Arguments({@required this.themeBloc});
}

//LoginScreen2 arguments holder class
class LoginScreen2Arguments {
  final ThemeBloc themeBloc;
  LoginScreen2Arguments({@required this.themeBloc});
}

//LoginScreen3 arguments holder class
class LoginScreen3Arguments {
  final ThemeBloc themeBloc;
  LoginScreen3Arguments({@required this.themeBloc});
}

//SignUp4 arguments holder class
class SignUp4Arguments {
  final ThemeBloc themeBloc;
  SignUp4Arguments({@required this.themeBloc});
}

//LoginScreen5 arguments holder class
class LoginScreen5Arguments {
  final ThemeBloc themeBloc;
  LoginScreen5Arguments({@required this.themeBloc});
}

//LoginScreen6 arguments holder class
class LoginScreen6Arguments {
  final ThemeBloc themeBloc;
  LoginScreen6Arguments({@required this.themeBloc});
}

//RegisterScreen7 arguments holder class
class RegisterScreen7Arguments {
  final ThemeBloc themeBloc;
  RegisterScreen7Arguments({@required this.themeBloc});
}

//LoginScreen8 arguments holder class
class LoginScreen8Arguments {
  final ThemeBloc themeBloc;
  LoginScreen8Arguments({@required this.themeBloc});
}

//LoginScreen9 arguments holder class
class LoginScreen9Arguments {
  final ThemeBloc themeBloc;
  LoginScreen9Arguments({@required this.themeBloc});
}
