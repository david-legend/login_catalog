import 'package:auto_route/auto_route_annotations.dart';
import 'package:logincatalog/screens/login_design_1/login_screen_1.dart';
import 'package:logincatalog/screens/login_design_1/signup_screen_1.dart';
import 'package:logincatalog/screens/login_design_2/login_screen_2.dart';
import 'package:logincatalog/screens/login_design_2/signup_screen_2.dart';

@MaterialAutoRouter()
class $Router {

  LoginScreen1 loginScreen1;
  SignUpScreen1 signUpScreen1;

  LoginScreen2 loginScreen2;
  @initial
  SignUpScreen2 signUpScreen2;

}