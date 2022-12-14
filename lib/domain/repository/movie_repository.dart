import 'package:dartz/dartz.dart';
import 'package:popular_movies/core/network_error.dart';
import 'package:popular_movies/domain/model/movie.dart';
import 'package:popular_movies/domain/model/video.dart';

import '../model/movie_details.dart';

abstract class MovieRepository {
  Future<Either<NetworkError, List<Movie>>> getPopularMovies();

  Future<Either<NetworkError, MovieDetails>> getMovieDetail(int id);

  Future<Either<NetworkError, List<Video>>> getMovieVideos(int id);
}
