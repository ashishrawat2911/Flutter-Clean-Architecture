import 'package:injectable/injectable.dart';
import 'package:popular_movies/data/source/local/movie_dao.dart';
import 'package:popular_movies/data/source/movie_local_data_source.dart';

import 'model/movie_entity.dart';

@Injectable(as: MovieLocalDataSource)
class MovieLocalDataSourceImpl extends MovieLocalDataSource {
  final MovieDao _movieDao;

  MovieLocalDataSourceImpl(
    this._movieDao,
  );

  @override
  Future<List<MovieEntity>> getMovies() async {
    final movies = await _movieDao.findAllMovies();
    return movies;
  }

  @override
  Future<MovieEntity?> movieDetails(int id) async {
    final movie = await _movieDao.findMovieById(id);
    if (movie == null) return null;
    return movie;
  }

  @override
  Future<void> saveMovies(List<MovieEntity> movies) {
    return _movieDao.insertMovies(movies);
  }
}
