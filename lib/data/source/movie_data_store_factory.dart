import 'package:injectable/injectable.dart';
import 'package:popular_movies/core/extention/list_extentions.dart';
import 'package:popular_movies/core/services/connectivity_service.dart';
import 'package:popular_movies/data/mapper/movie_entity_to_movie_details_mapper.dart';
import 'package:popular_movies/data/source/movie_local_data_source.dart';
import 'package:popular_movies/data/source/movie_remote_data_source.dart';
import 'package:popular_movies/domain/model/movie_details.dart';
import 'package:popular_movies/domain/model/video.dart';

import '../../domain/model/movie.dart';

@singleton
class MovieDataStoreFactory {
  final MovieMapper _movieMapper;
  final MovieLocalDataSource _movieLocalDataSource;
  final MovieRemoteDataSource _movieRemoteDataSource;
  final ConnectivityService connectivityService;

  MovieDataStoreFactory(
    this._movieMapper,
    this._movieLocalDataSource,
    this._movieRemoteDataSource,
    this.connectivityService,
  );

  Future<MovieDetails> getMovieDetails(int id) async {
    /*
    Fetch the movie details from the DB, if not available then get it from API
    */
    final cacheMovie = await _movieLocalDataSource.movieDetails(id);
    if (cacheMovie == null) {
      final movie = await _movieRemoteDataSource.getMovieDetails(id);
      return _movieMapper.movieResponseToMovieDetails(movie);
    } else {
      return _movieMapper.movieEntityToMovieDetails(cacheMovie);
    }
  }

  Future<List<Movie>> getMovies() async {
    /*
    Check if there is no network connection then retrieve the data from the DB.
    */
    if (await connectivityService.checkInternetConnection()) {
      final movies = await _movieRemoteDataSource.getMovies();
      _movieLocalDataSource.saveMovies(movies.map((e) => _movieMapper.movieResponseToMovieEntity(e)).toList());
      return movies.mapToList((e) => _movieMapper.movieResponseToMovie(e));
    } else {
      final cacheMovies = await _movieLocalDataSource.getMovies();
      return cacheMovies.mapToList((movieEntity) => _movieMapper.movieEntityToMovie(movieEntity));
    }
  }

  Future<List<Video>> getMovieVideos(int id) async {
    final videos = await _movieRemoteDataSource.getMovieVideos(id);
    return videos.mapToList((e) => _movieMapper.videoResponseToVideo(e));
  }
}
