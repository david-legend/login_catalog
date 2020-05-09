import 'package:auto_route/auto_route_annotations.dart';
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
import 'package:logincatalog/screens/root_screen.dart';

@MaterialAutoRouter()
class $Router {

  @initial
  RootScreen rootScreen;

  LoginScreen1 loginScreen1;
  SignUpScreen1 signUpScreen1;

  LoginScreen2 loginScreen2;
  SignUpScreen2 signUpScreen2;

  SignUpScreen3 signUpScreen3;
  LoginScreen3 loginScreen3;

  LoginScreen4 loginScreen4;
  SignUp4 signUp4;
  SignUpScreen4 signUpScreen4;

  LoginScreen5 loginScreen5;
  SignUpScreen5 signUpScreen5;

  LoginScreen6 loginScreen6;
  SignUpScreen6 signUpScreen6;

  RegisterScreen7 registerScreen7;

  LoginScreen8 loginScreen8;
}

//ScreenArguments arguments holder class
class ScreenArguments {
  final ThemeBloc themeBloc;
  ScreenArguments({@required this.themeBloc});
}