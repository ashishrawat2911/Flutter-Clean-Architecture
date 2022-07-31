import 'package:injectable/injectable.dart';
import 'package:popular_movies/data/mapper/movie_entity_to_movie_mapper.dart';
import 'package:popular_movies/data/source/local/movie_dao.dart';
import 'package:popular_movies/data/source/movie_local_data_source.dart';
import 'package:popular_movies/domain/model/movie.dart';

import '../../mapper/movie_to_movie_entity_mapper.dart';

@Injectable(as: MovieLocalDataSource)
class MovieLocalDataSourceImpl extends MovieLocalDataSource {
  final MovieDao _movieDao;
  final MovieEntityToMovieMapper _movieEntityToMovieMapper;
  MovieToMovieEntityMapper _movieToMovieEntityMapper;

  MovieLocalDataSourceImpl(this._movieDao, this._movieEntityToMovieMapper,this._movieToMovieEntityMapper);

  @override
  Future<List<Movie>> getMovies() async {
    final movies = await _movieDao.findAllMovies();
    return movies.map((e) => _movieEntityToMovieMapper.fromModel(e)).toList();
  }

  @override
  Future<Movie?> movieDetails(int id) async {
    final movie = await _movieDao.findMovieById(id);
    if (movie == null) return null;
    return _movieEntityToMovieMapper.fromModel(movie);
  }

  @override
  Future<void> saveMovies(List<Movie> movies) {
    return _movieDao.insertMovies(movies.map((e) => _movieToMovieEntityMapper.fromModel(e)).toList());
  }
}