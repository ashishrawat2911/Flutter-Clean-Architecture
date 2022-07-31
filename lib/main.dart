import 'package:flutter/material.dart';
import 'package:popular_movies/di/di.dart';
import 'package:popular_movies/main_app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await configureDependencies();
  runApp(const MainApp());
}
