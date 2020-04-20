import 'package:auto_route/auto_route_annotations.dart';
import 'package:logincatalog/screens/login_design_1/login_screen_1.dart';
import 'package:logincatalog/screens/login_design_1/signup_screen_1.dart';

@MaterialAutoRouter()
class $Router {

  @initial
  LoginScreen1 loginScreen1;
  SignUpScreen1 signupScreen1;

}