import 'package:injectable/injectable.dart';
import 'package:popular_movies/data/source/local/database/dao/movie_dao.dart';
import 'package:popular_movies/data/source/movie_local_data_source.dart';

import 'database/model/movie_entity.dart';

@Injectable(as: MovieLocalDataSource)
class MovieLocalDataSourceImpl extends MovieLocalDataSource {
  final MovieDao _movieDao;

  MovieLocalDataSourceImpl(
    this._movieDao,
  );

  @override
  Future<List<MovieEntity>> getMovies() async {
    return _movieDao.findAllMovies();
  }

  @override
  Future<MovieEntity?> movieDetails(int id) async {
    return _movieDao.findMovieById(id);
  }

  @override
  Future<void> saveMovies(List<MovieEntity> movies) {
    return _movieDao.insertMovies(movies);
  }
}
