import 'package:dartz/dartz.dart';
import 'package:popular_movies/core/network_error.dart';
import 'package:popular_movies/domain/model/video.dart';

abstract class GetMovieVideosUseCase {
  Future<Either<NetworkError, List<Video>>> execute(int id);
}
