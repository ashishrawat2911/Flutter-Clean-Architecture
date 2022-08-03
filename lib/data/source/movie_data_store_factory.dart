import 'package:injectable/injectable.dart';
import 'package:popular_movies/core/services/connectivity_service.dart';
import 'package:popular_movies/data/mapper/movie_entity_to_movie_details_mapper.dart';
import 'package:popular_movies/data/mapper/movie_entity_to_movie_mapper.dart';
import 'package:popular_movies/data/mapper/movie_response_to_movie_details_mapper.dart';
import 'package:popular_movies/data/mapper/movie_response_to_movie_entity_mapper.dart';
import 'package:popular_movies/data/mapper/movie_response_to_movie_mapper.dart';
import 'package:popular_movies/data/source/movie_local_data_source.dart';
import 'package:popular_movies/data/source/movie_remote_data_source.dart';
import 'package:popular_movies/domain/model/movie_details.dart';

import '../../domain/model/movie.dart';

@singleton
class MovieDataStoreFactory {
  final MovieEntityToMovieMapper _movieEntityToMovieMapper;
  final MovieResponseToMovieEntityMapper _movieResponseToMovieEntityMapper;
  final MovieEntityToMovieDetailsMapper _movieEntityToMovieDetailsMapper;
  final MovieLocalDataSource _movieLocalDataSource;
  final MovieRemoteDataSource _movieRemoteDataSource;
  final ConnectivityService connectivityService;
  final MovieResponseToMovieMapper _movieResponseToMovieMapper;
  final MovieResponseToMovieDetailsMapper _movieResponseToMovieDetailsMapper;

  MovieDataStoreFactory(
    this._movieEntityToMovieMapper,
    this._movieResponseToMovieEntityMapper,
    this._movieEntityToMovieDetailsMapper,
    this._movieLocalDataSource,
    this._movieRemoteDataSource,
    this.connectivityService,
    this._movieResponseToMovieMapper,
    this._movieResponseToMovieDetailsMapper,
  );

  Future<MovieDetails> getMovieDetails(int id) async {
    /*
    Fetch the movie details from the DB, if not available then get it from API
    */
    final cacheMovie = await _movieLocalDataSource.movieDetails(id);
    if (cacheMovie == null) {
      final movie = await _movieRemoteDataSource.getMovieDetails(id);
      return _movieResponseToMovieDetailsMapper.fromModel(movie);
    } else {
      return _movieEntityToMovieDetailsMapper.fromModel(cacheMovie);
    }
  }

  Future<List<Movie>> getMovies() async {
    /*
    Check if there is no network connection then retrieve the data from the DB.
    */
    if (await connectivityService.checkInternetConnection()) {
      final movies = await _movieRemoteDataSource.getMovies();
      _movieLocalDataSource.saveMovies(movies.map((e) => _movieResponseToMovieEntityMapper.fromModel(e)).toList());
      return movies.map((e) => _movieResponseToMovieMapper.fromModel(e)).toList();
    } else {
      final cacheMovies = await _movieLocalDataSource.getMovies();
      return cacheMovies.map((movieEntity) => _movieEntityToMovieMapper.fromModel(movieEntity)).toList();
    }
  }
}
