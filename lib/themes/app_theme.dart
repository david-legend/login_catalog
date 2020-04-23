import 'package:flutter/material.dart';

import 'login_design_1_theme.dart';
import 'login_design_2_theme.dart';

enum ThemeKeys { LOGIN_DESIGN_1, LOGIN_DESIGN_2 }

class ThemeModel {
  static ThemeData getThemeFromKey(ThemeKeys themeKey) {
    switch (themeKey) {
      case ThemeKeys.LOGIN_DESIGN_1:
        return LoginDesign1Theme.lightThemeData;
      case ThemeKeys.LOGIN_DESIGN_2:
        print("called");
        return LoginDesign2Theme.lightThemeData;
      default:
        return LoginDesign1Theme.lightThemeData;
    }
  }
}




