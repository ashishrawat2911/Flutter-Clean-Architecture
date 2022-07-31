import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:popular_movies/data/network_error.dart';
import 'package:popular_movies/domain/model/movie.dart';
import 'package:popular_movies/domain/repository/movie_repository.dart';
import 'package:popular_movies/domain/usecases/get_movie_detail_use_case.dart';

@Injectable(as: GetMovieDetailUseCase)
class GetMovieDetailUseCaseImpl extends GetMovieDetailUseCase {
  final MovieRepository _movieRepository;

  GetMovieDetailUseCaseImpl(this._movieRepository);

  @override
  Future<Either<NetworkError, Movie>> execute(int id) {
    return _movieRepository.getMovieDetail(id);
  }
}