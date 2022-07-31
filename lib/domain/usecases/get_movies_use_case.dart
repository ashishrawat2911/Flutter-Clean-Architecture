import 'package:dartz/dartz.dart';
import 'package:popular_movies/core/network_error.dart';
import 'package:popular_movies/domain/model/movie.dart';

abstract class GetMoviesUseCase {
  Future<Either<NetworkError, List<Movie>>> execute();
}
