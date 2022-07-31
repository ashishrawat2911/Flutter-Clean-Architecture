import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:popular_movies/presentation/features/movies/view/movies_screen.dart';
import 'package:popular_movies/presentation/route/route_data.dart';
import 'package:popular_movies/presentation/route/routes.dart';

class NavigationHandler {
  static final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();
  static const initialRoute = '/';

  ///Check how to navigate using the
  ///https://docs.flutter.dev/cookbook/navigation/named-routes
  static Route? onGenerate(RouteSettings settings) {
    final name = settings.name;
    final arguments = settings.arguments;
    if (name == initialRoute) {
      return _getRoute(MoviesRoute());
    }
    if (arguments is RouteData) {
      return _getRoute(arguments);
    }
    return null;
  }

  static Route _getRoute(RouteData routeParam) {
    return CupertinoPageRoute(
      builder: (context) {
        return routeParam.build(context);
      },
    );
  }
}
