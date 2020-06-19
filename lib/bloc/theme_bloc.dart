import 'package:flutter/material.dart';
import 'package:logincatalog/themes/login_design_1_theme.dart';
import 'package:logincatalog/themes/login_design_2_theme.dart';
import 'package:rxdart/rxdart.dart';
import 'dart:async';

class CurrentTheme {
  final String name;
  final ThemeData data;

  const CurrentTheme(this.name, this.data);
}

class ThemeBloc {
  final Stream<ThemeData> themeDataStream;
  final Sink<CurrentTheme> selectedTheme;

  factory ThemeBloc() {
    final selectedTheme = PublishSubject<CurrentTheme>();
    final themeDataStream = selectedTheme.distinct().map((theme) => theme.data);
    return ThemeBloc._(themeDataStream, selectedTheme);
  }

  const ThemeBloc._(this.themeDataStream, this.selectedTheme);

  CurrentTheme initialTheme() {
    return CurrentTheme('initial', LoginDesign1Theme.lightThemeData);
  }
}
