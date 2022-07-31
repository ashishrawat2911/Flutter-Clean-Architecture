import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:popular_movies/data/network_error.dart';
import 'package:popular_movies/data/source/movie_local_data_source.dart';
import 'package:popular_movies/data/source/movie_remote_data_source.dart';
import 'package:popular_movies/domain/model/movie.dart';
import 'package:popular_movies/domain/repository/movie_repository.dart';

@Injectable(as: MovieRepository)
class MovieRepositoryImpl extends MovieRepository {
  final MovieLocalDataSource _movieLocalDataSource;
  final MovieRemoteDataSource _movieRemoteDataSource;

  MovieRepositoryImpl(this._movieLocalDataSource, this._movieRemoteDataSource);

  @override
  Future<Either<NetworkError, Movie>> getMovieDetail(int id) async {
    try {
      final movie = await _movieRemoteDataSource.getMovieDetails(id);
      return Right(movie);
      final cacheMovie = await _movieLocalDataSource.movieDetails(id);
      if (cacheMovie == null) {
        final movie = await _movieRemoteDataSource.getMovieDetails(id);
        return Right(movie);
      } else {
        return Right(cacheMovie);
      }
    } catch (e) {
      print(e);
      return Left(NetworkError("errorMessage", "status"));
    }
  }

  @override
  Future<Either<NetworkError, List<Movie>>> getPopularMovies() async {
    try {
      final movies = await _movieRemoteDataSource.getMovies();
      return Right(movies);
      final cacheMovies = await _movieLocalDataSource.getMovies();
      if (cacheMovies.isEmpty) {
        final movies = await _movieRemoteDataSource.getMovies();
        return Right(movies);
      } else {
        return Right(cacheMovies);
      }
    } catch (e) {
      print(e);
      return Left(NetworkError("errorMessage", "status"));
    }
  }
}
