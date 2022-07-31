import 'package:popular_movies/data/source/local/model/movie_entity.dart';
import 'package:popular_movies/domain/model/movie.dart';

abstract class MovieLocalDataSource {
  Future<List<Movie>> getMovies();
  Future<Movie?> movieDetails(int id);
  Future<void> saveMovies(List<Movie> movies);
}
