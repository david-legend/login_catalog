import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:logincatalog/routes/router.gr.dart';
import 'package:logincatalog/bloc/theme_bloc.dart';
import 'package:logincatalog/screens/root_screen.dart';

void main() {
  runApp(
    MyApp(),
  );
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  late ThemeBloc _themeBloc;
  final _appRouter = AppRouter();

  @override
  void initState() {
    super.initState();
    _themeBloc = ThemeBloc();
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<ThemeData>(
      initialData: _themeBloc.initialTheme().data,
      stream: _themeBloc.themeDataStream,
      builder: (BuildContext context, AsyncSnapshot<ThemeData> snapshot) {
        return MaterialApp.router(
          routerDelegate: _appRouter.delegate(
            placeholder: (context) {
              return RootScreen(themeBloc: _themeBloc);
            }
          ),
          // routeInformationProvider: _appRouter.routeInfoProvider(
          //   initialRouteInformation: RouteInformation(
          //     location: "/",
          //     state: _themeBloc,
          //   ),
          // ),
          routeInformationParser: _appRouter.defaultRouteParser(),
          debugShowCheckedModeBanner: false,
          theme: snapshot.data,
        );
      },
    );
  }
}
