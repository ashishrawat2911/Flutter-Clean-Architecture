import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:popular_movies/res/constants.dart';
import 'package:retrofit/retrofit.dart';

import '../model/movie_list_response_model.dart';
import '../model/movie_response_model.dart';

part 'movie_api_serice.g.dart';

@RestApi(baseUrl: Constants.apiBaseUrl)
@injectable
abstract class MovieApiService {
  @factoryMethod
  factory MovieApiService(Dio _dio) {
    if (kDebugMode) {
      _dio.interceptors.add(LogInterceptor(
          responseBody: true,
          error: true,
          requestHeader: true,
          responseHeader: false,
          request: true,
          requestBody: true));
    }
    _dio
      ..httpClientAdapter
      ..options.queryParameters = {
        "api_key": Constants.apiKey,
      }
      ..options.headers = {
        'Content-Type': 'application/json; charset=UTF-8',
        "X-Requested-With": "XMLHttpRequest",
      };
    return _MovieApiService(_dio);
  }

  @GET("movie/popular")
  Future<MovieListResponseModel> getMovies();

  @GET("movie/{movie_id}")
  Future<MovieResponseModel> getMovieDetails(@Path("movie_id") int id);
}
