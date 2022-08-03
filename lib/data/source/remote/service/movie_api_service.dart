import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import '../model/movie_list_response_model.dart';
import '../model/movie_response_model.dart';

part 'movie_api_service.g.dart';

@RestApi()
abstract class MovieApiService {
  factory MovieApiService(Dio dio, String baseUrl) => _MovieApiService(dio, baseUrl: baseUrl);

  @GET("movie/popular")
  Future<MovieListResponseModel> getMovies();

  @GET("movie/{movie_id}")
  Future<MovieResponseModel> getMovieDetails(@Path("movie_id") int id);
}
