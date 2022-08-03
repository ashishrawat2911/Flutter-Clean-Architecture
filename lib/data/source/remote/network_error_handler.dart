import 'dart:io';

import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:popular_movies/core/network_error.dart';
import 'package:popular_movies/data/source/remote/model/error_model.dart';

@singleton
class NetworkErrorHandler {
  NetworkError getNetworkError(dynamic error) {
    String networkExceptions;
    int statusCode = 0;
    if (error is Exception) {
      try {
        if (error is DioError) {
          switch (error.type) {
            case DioErrorType.cancel:
              networkExceptions = 'request_cancelled';
              break;
            case DioErrorType.connectTimeout:
              networkExceptions = 'connection_request_timeout';
              break;
            case DioErrorType.other:
              networkExceptions = 'no_internet_connection';
              break;
            case DioErrorType.receiveTimeout:
              networkExceptions = 'receive_timeout';
              break;
            case DioErrorType.response:
              final response = error.response;
              statusCode = response?.statusCode ?? 0;
              try {
                final errorModel = ErrorModel.fromJson(response!.data);
                networkExceptions = errorModel.statusMessage;
              } catch (e) {
                networkExceptions = "invalid_status_code: $statusCode";
              }
              break;
            case DioErrorType.sendTimeout:
              networkExceptions = 'send_timeout';
              break;
          }
        } else if (error is SocketException) {
          networkExceptions = 'no_internet_connection';
        } else {
          networkExceptions = 'unexpected_error_occurred';
        }
      } on FormatException catch (e) {
        networkExceptions = 'unexpected_error_occurred : ${e.message}';
      } catch (e) {
        networkExceptions = 'unexpected_error_occurred : ${e.toString()}';
      }
    } else {
      if (error.toString().contains("is not a subtype of")) {
        networkExceptions = 'unable_to_parse_response';
      } else {
        networkExceptions = 'unexpected_error_occurred : ${error.toString()}';
      }
    }
    return NetworkError(networkExceptions, statusCode);
  }
}
