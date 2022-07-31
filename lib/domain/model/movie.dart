import 'package:popular_movies/res/constants.dart';

class Movie {
  int id;
  String posterPath;
  String backdropPath;
  String title;
  double voteAverage;
  String overview;

  Movie(
    this.id,
    this.posterPath,
    this.backdropPath,
    this.title,
    this.voteAverage,
    this.overview,
  );

  @override
  String toString() {
    return 'Movie{id: $id, posterPath: $posterPath, backdropPath: $backdropPath, title: $title, voteAverage: $voteAverage, overview: $overview}';
  }
}

extension MovieDbImage on String {
  String get getMovieDBImage => Constants.movieImagePath + this;
}
