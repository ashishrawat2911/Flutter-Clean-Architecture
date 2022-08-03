import 'package:popular_movies/data/source/remote/model/movie_response_model.dart';

abstract class MovieRemoteDataSource {
  Future<List<MovieResponseModel>> getMovies();

  Future<MovieResponseModel> getMovieDetails(int id);
}
