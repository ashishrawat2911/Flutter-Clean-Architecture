// entity/person.dart

import 'package:floor/floor.dart';

@entity
class MovieEntity {
  @primaryKey
  int id;
  String posterPath;
  String backdropPath;
  String title;
  double voteAverage;
  String overview;

  MovieEntity(this.id, this.posterPath, this.backdropPath, this.title, this.voteAverage, this.overview);
}
