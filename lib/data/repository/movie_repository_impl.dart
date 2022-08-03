import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:popular_movies/core/network_error.dart';
import 'package:popular_movies/data/source/movie_data_store_factory.dart';
import 'package:popular_movies/data/source/remote/network_error_handler.dart';
import 'package:popular_movies/domain/model/movie.dart';
import 'package:popular_movies/domain/model/movie_details.dart';
import 'package:popular_movies/domain/repository/movie_repository.dart';

@Injectable(as: MovieRepository)
class MovieRepositoryImpl extends MovieRepository {
  final MovieDataStoreFactory _movieDataStoreFactory;

  MovieRepositoryImpl(this._movieDataStoreFactory);

  @override
  Future<Either<NetworkError, MovieDetails>> getMovieDetail(int id) async {
    /*
    Fetch the movie details from the DB, if not available then get it from API
    */
    try {
      final movie = await _movieDataStoreFactory.getMovieDetails(id);
      return Right(movie);
    } catch (e) {
      return Left(getNetworkError(e));
    }
  }

  @override
  Future<Either<NetworkError, List<Movie>>> getPopularMovies() async {
    /*
    Check if there is no network connection then retrieve the data from the DB.
    */
    try {
      final movies = await _movieDataStoreFactory.getMovies();
      return Right(movies);
    } catch (e) {
      return Left(getNetworkError(e));
    }
  }
}
