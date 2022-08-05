import 'package:popular_movies/data/source/local/database/model/movie_entity.dart';

abstract class MovieLocalDataSource {
  Future<List<MovieEntity>> getMovies();

  Future<MovieEntity?> movieDetails(int id);

  Future<void> saveMovies(List<MovieEntity> movies);
}
