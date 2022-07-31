import 'package:floor/floor.dart';
import 'package:popular_movies/data/source/local/model/movie_entity.dart';

@dao
abstract class MovieDao {
  @Query('SELECT * FROM Movie')
  Future<List<MovieEntity>> findAllMovies();

  @Query('SELECT * FROM Movie WHERE id = :id')
  Future<MovieEntity?> findMovieById(int id);

  @insert
  Future<void> insertMovie(MovieEntity movie);
}
