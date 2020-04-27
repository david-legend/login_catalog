import 'package:auto_route/auto_route_annotations.dart';
import 'package:logincatalog/screens/login_design_1/login_screen_1.dart';
import 'package:logincatalog/screens/login_design_1/signup_screen_1.dart';
import 'package:logincatalog/screens/login_design_2/login_screen_2.dart';
import 'package:logincatalog/screens/login_design_2/signup_screen_2.dart';
import 'package:logincatalog/screens/login_design_3/login_screen_3.dart';
import 'package:logincatalog/screens/login_design_3/signup_screen_3.dart';

@MaterialAutoRouter()
class $Router {

  LoginScreen1 loginScreen1;
  SignUpScreen1 signUpScreen1;

  LoginScreen2 loginScreen2;

  SignUpScreen2 signUpScreen2;

  @initial
  SignUpScreen3 signUpScreen3;
  LoginScreen3 loginScreen3;

}