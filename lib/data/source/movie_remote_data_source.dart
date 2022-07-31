import 'package:popular_movies/domain/model/movie.dart';

abstract class MovieRemoteDataSource {
  Future<List<Movie>> getMovies();

  Future<Movie> getMovieDetails(int id);
}
