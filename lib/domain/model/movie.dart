import 'package:popular_movies/res/constants.dart';

class Movie {
  int id;
  String posterPath;
  String title;
  double voteAverage;
  String overview;

  Movie(
    this.id,
    this.posterPath,
    this.title,
    this.voteAverage,
    this.overview,
  );
}

extension MovieDbImage on String {
  String get getMovieDBImage => Constants.movieImagePath + this;
}
