import 'package:popular_movies/data/source/remote/model/movie_response_model.dart';
import 'package:popular_movies/domain/model/movie.dart';
import 'package:popular_movies/domain/model/movie_details.dart';

abstract class MovieRemoteDataSource {
  Future<List<MovieResponseModel>> getMovies();

  Future<MovieResponseModel> getMovieDetails(int id);
}
