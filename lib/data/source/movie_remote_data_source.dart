import 'package:popular_movies/data/source/remote/model/movie_response_model.dart';
import 'package:popular_movies/data/source/remote/model/video_response.dart';

abstract class MovieRemoteDataSource {
  Future<List<MovieResponseModel>> getMovies();

  Future<MovieResponseModel> getMovieDetails(int id);

  Future<List<VideoResponse>> getMovieVideos(int id);
}
