import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:popular_movies/data/network_error.dart';
import 'package:popular_movies/domain/model/movie.dart';
import 'package:popular_movies/domain/repository/movie_repository.dart';
import 'package:popular_movies/domain/usecases/get_movies_use_case.dart';

@Injectable(as: GetMoviesUseCase)
class GetMoviesUseCaseImpl extends GetMoviesUseCase {
  final MovieRepository _movieRepository;

  GetMoviesUseCaseImpl(this._movieRepository);

  @override
  Future<Either<NetworkError, List<Movie>>> execute() {
    return _movieRepository.getPopularMovies();
  }
}
