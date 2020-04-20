import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:logincatalog/routes/router.gr.dart';

import 'app_theme.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: Routes.loginScreen1,
      theme: LoginCatalogThemeData.lightThemeData,
      onGenerateRoute: Router().onGenerateRoute,
      builder: ExtendedNavigator<Router>(router: Router()),
    );
  }
}

