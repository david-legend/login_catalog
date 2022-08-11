import 'package:auto_route/auto_route.dart';
import 'package:flutter/foundation.dart';
import 'package:logincatalog/bloc/theme_bloc.dart';
import 'package:logincatalog/screens/login_design_1/login_screen_1.dart';
import 'package:logincatalog/screens/login_design_1/signup_screen_1.dart';
import 'package:logincatalog/screens/login_design_2/login_screen_2.dart';
import 'package:logincatalog/screens/login_design_2/signup_screen_2.dart';
import 'package:logincatalog/screens/login_design_3/login_screen_3.dart';
import 'package:logincatalog/screens/login_design_3/signup_screen_3.dart';
import 'package:logincatalog/screens/login_design_4/login_screen_4.dart';
import 'package:logincatalog/screens/login_design_4/signup_screen_4.dart';
import 'package:logincatalog/screens/login_design_4/signup_4.dart';
import 'package:logincatalog/screens/login_design_5/login_screen_5.dart';
import 'package:logincatalog/screens/login_design_5/signup_screen_5.dart';
import 'package:logincatalog/screens/login_design_6/login_screen_6.dart';
import 'package:logincatalog/screens/login_design_6/signup_screen_6.dart';
import 'package:logincatalog/screens/login_design_7/register_screen_7.dart';
import 'package:logincatalog/screens/login_design_8/login_screen_8.dart';
import 'package:logincatalog/screens/login_design_9/login_screen_9.dart';
import 'package:logincatalog/screens/login_design_9/signup_screen_9.dart';
import 'package:logincatalog/screens/root_screen.dart';


@MaterialAutoRouter(
  routes: <AutoRoute>[
    // initial route is named "/"
    MaterialRoute(page: RootScreen, initial: true, ),

    MaterialRoute(page: LoginScreen1),
    MaterialRoute(page: SignUpScreen1),

    MaterialRoute(page: LoginScreen2),
    MaterialRoute(page: SignUpScreen2),

    MaterialRoute(page: LoginScreen3),
    MaterialRoute(page: SignUpScreen3),

    MaterialRoute(page: LoginScreen4),
    MaterialRoute(page: SignUp4),
    MaterialRoute(page: SignUpScreen4),

    MaterialRoute(page: LoginScreen5),
    MaterialRoute(page: SignUpScreen5),

    MaterialRoute(page: LoginScreen6),
    MaterialRoute(page: SignUpScreen6),

    MaterialRoute(page: RegisterScreen7),

    MaterialRoute(page: LoginScreen8),

    MaterialRoute(page: LoginScreen9),
    MaterialRoute(page: SignUpScreen9),
  ],
)
class $AppRouter {}

//ScreenArguments arguments holder class
class ScreenArguments {
  final ThemeBloc themeBloc;
  ScreenArguments({required this.themeBloc});
}
