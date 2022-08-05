import 'package:injectable/injectable.dart';
import 'package:popular_movies/data/source/movie_remote_data_source.dart';
import 'package:popular_movies/data/source/remote/model/video_response.dart';
import 'package:popular_movies/data/source/remote/service/movie_api_service.dart';

import 'model/movie_response_model.dart';

@Injectable(as: MovieRemoteDataSource)
class MovieRemoteDataSourceImpl extends MovieRemoteDataSource {
  final MovieApiService _movieApiService;

  MovieRemoteDataSourceImpl(
    this._movieApiService,
  );

  @override
  Future<MovieResponseModel> getMovieDetails(int id) async {
    return _movieApiService.getMovieDetails(id);
  }

  @override
  Future<List<MovieResponseModel>> getMovies() async {
    final movies = await _movieApiService.getMovies();
    return movies.results;
  }

  @override
  Future<List<VideoResponse>> getMovieVideos(int id) async {
    final videosResponse = await _movieApiService.getMovieVideos(id);
    return videosResponse.videos;
  }
}
