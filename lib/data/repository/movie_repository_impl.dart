import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:popular_movies/core/network_error.dart';
import 'package:popular_movies/core/services/connectivity_service.dart';
import 'package:popular_movies/data/source/movie_local_data_source.dart';
import 'package:popular_movies/data/source/movie_remote_data_source.dart';
import 'package:popular_movies/data/source/remote/network_error_handler.dart';
import 'package:popular_movies/domain/model/movie.dart';
import 'package:popular_movies/domain/repository/movie_repository.dart';

@Injectable(as: MovieRepository)
class MovieRepositoryImpl extends MovieRepository {
  final MovieLocalDataSource _movieLocalDataSource;
  final MovieRemoteDataSource _movieRemoteDataSource;
  final ConnectivityService connectivityService;

  MovieRepositoryImpl(this._movieLocalDataSource, this._movieRemoteDataSource, this.connectivityService);

  @override
  Future<Either<NetworkError, Movie>> getMovieDetail(int id) async {
    try {
      final cacheMovie = await _movieLocalDataSource.movieDetails(id);
      if (cacheMovie == null) {
        final movie = await _movieRemoteDataSource.getMovieDetails(id);
        return Right(movie);
      } else {
        return Right(cacheMovie);
      }
    } catch (e) {
      return Left(getNetworkError(e));
    }
  }

  @override
  Future<Either<NetworkError, List<Movie>>> getPopularMovies() async {
    try {
      if (await connectivityService.checkInternetConnection()) {
        final movies = await _movieRemoteDataSource.getMovies();
        _movieLocalDataSource.saveMovies(movies);
        return Right(movies);
      } else {
        final cacheMovies = await _movieLocalDataSource.getMovies();
        return Right(cacheMovies);
      }
    } catch (e) {
      return Left(getNetworkError(e));
    }
  }
}
