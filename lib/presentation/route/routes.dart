import 'package:flutter/material.dart';
import 'package:popular_movies/presentation/features/movie_detail/view/movie_details_screen.dart';
import 'package:popular_movies/presentation/features/movies/splash/view/splash_screen.dart';
import 'package:popular_movies/presentation/features/movies/view/movies_screen.dart';
import 'package:popular_movies/presentation/route/route_data.dart';

class SplashRoute extends RouteData {
  @override
  Widget build(BuildContext context) {
    return const SplashScreen();
  }

  @override
  String get routeName => '/';
}

class MoviesRoute extends RouteData {
  @override
  Widget build(BuildContext context) {
    return const MoviesScreen();
  }

  @override
  String get routeName => '/movies';
}

class MovieDetailRoute extends RouteData {
  final int id;

  MovieDetailRoute(this.id);

  @override
  Widget build(BuildContext context) {
    return MoviesDetailScreen(id);
  }

  @override
  String get routeName => '/moviesDetail';
}
