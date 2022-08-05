// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie_api_service.dart';

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

class _MovieApiService implements MovieApiService {
  _MovieApiService(this._dio, {this.baseUrl});

  final Dio _dio;

  String? baseUrl;

  @override
  Future<MovieListResponseModel> getMovies() async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(_setStreamType<MovieListResponseModel>(
        Options(method: 'GET', headers: _headers, extra: _extra)
            .compose(_dio.options, 'movie/popular', queryParameters: queryParameters, data: _data)
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = MovieListResponseModel.fromJson(_result.data!);
    return value;
  }

  @override
  Future<MovieResponseModel> getMovieDetails(id) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(_setStreamType<MovieResponseModel>(
        Options(method: 'GET', headers: _headers, extra: _extra)
            .compose(_dio.options, 'movie/${id}', queryParameters: queryParameters, data: _data)
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = MovieResponseModel.fromJson(_result.data!);
    return value;
  }

  @override
  Future<VideosResponse> getMovieVideos(movieId) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(_setStreamType<VideosResponse>(
        Options(method: 'GET', headers: _headers, extra: _extra)
            .compose(_dio.options, 'movie/${movieId}/videos', queryParameters: queryParameters, data: _data)
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = VideosResponse.fromJson(_result.data!);
    return value;
  }

  RequestOptions _setStreamType<T>(RequestOptions requestOptions) {
    if (T != dynamic &&
        !(requestOptions.responseType == ResponseType.bytes || requestOptions.responseType == ResponseType.stream)) {
      if (T == String) {
        requestOptions.responseType = ResponseType.plain;
      } else {
        requestOptions.responseType = ResponseType.json;
      }
    }
    return requestOptions;
  }
}
