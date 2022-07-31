import 'package:flutter/cupertino.dart';
import 'package:popular_movies/presentation/route/router.dart';

/*
 popUntil,
  pushAndPopUntil,
  dialog,
*/
abstract class RouteData {
  String get routeName;

  Widget build(BuildContext context);

  Future push() async {
    return NavigationHandler.navigatorKey.currentState!.pushNamed(routeName, arguments: this);
  }

  Future pushReplacement() {
    return NavigationHandler.navigatorKey.currentState!.pushReplacementNamed(routeName, arguments: this);
  }

  static void pop<T extends Object?>([T? result]) {
    NavigationHandler.navigatorKey.currentState!.pop(result);
  }

  static void pushAndPop<T extends Object?>(RouteData routeData, [T? result]) {
    NavigationHandler.navigatorKey.currentState!.pop(result);
    routeData.push();
  }

  static pushAndPopUntil(RouteData routeData) async {
    NavigationHandler.navigatorKey.currentState!.popUntil(
      (route) => route.settings.arguments == routeData,
    );
    routeData.push();
  }

  @override
  String toString() {
    return 'RouteData{ $routeName }';
  }
}
