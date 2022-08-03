import 'package:injectable/injectable.dart';
import 'package:popular_movies/data/source/movie_remote_data_source.dart';
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
    final movie = await _movieApiService.getMovieDetails(id);
    return movie;
  }

  @override
  Future<List<MovieResponseModel>> getMovies() async {
    final movies = await _movieApiService.getMovies();
    return movies.results;
  }
}
