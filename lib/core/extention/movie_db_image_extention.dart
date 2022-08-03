import 'package:popular_movies/res/constants.dart';

extension MovieDbImage on String {
  String get getMovieDBImage => Constants.movieImagePath + this;
}
