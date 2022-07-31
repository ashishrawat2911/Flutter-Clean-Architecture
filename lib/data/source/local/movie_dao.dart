import 'package:floor/floor.dart';
import 'package:popular_movies/data/source/local/model/movie_entity.dart';

@dao
abstract class MovieDao {
  @Query('SELECT * FROM MovieEntity')
  Future<List<MovieEntity>> findAllMovies();

  @Query('SELECT * FROM MovieEntity WHERE id = :id')
  Future<MovieEntity?> findMovieById(int id);

  @Insert(onConflict: OnConflictStrategy.replace)
  Future<void> insertMovie(MovieEntity movie);

  @Insert(onConflict: OnConflictStrategy.replace)
  Future<void> insertMovies(List<MovieEntity> movie);
}
