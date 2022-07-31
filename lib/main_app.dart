import 'package:flutter/material.dart';
import 'package:popular_movies/presentation/features/movies/view/movies_screen.dart';

class MainApp extends StatelessWidget {
  const MainApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MoviesScreen(),
    );
  }
}
