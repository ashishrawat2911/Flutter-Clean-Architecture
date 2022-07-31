import 'package:flutter/material.dart';
import 'package:popular_movies/presentation/route/router.dart';

class MainApp extends StatelessWidget {
  const MainApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorKey: NavigationHandler.navigatorKey,
      initialRoute: NavigationHandler.initialRoute,
      onGenerateRoute: NavigationHandler.onGenerate,
    );
  }
}
