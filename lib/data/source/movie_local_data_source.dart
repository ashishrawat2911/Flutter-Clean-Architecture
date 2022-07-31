import 'package:popular_movies/domain/model/movie.dart';

abstract class MovieLocalDataSource {
  Future<List<Movie>> getMovies();
  Future<Movie?> movieDetails(int id);
}
