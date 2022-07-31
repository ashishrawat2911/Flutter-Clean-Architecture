import 'package:popular_movies/data/network_error.dart';

class ErrorModel {
  NetworkError getNetworkError(Map<String, dynamic> json) {
    return NetworkError(json['status_message'] ?? '', json['status_code'] ?? '');
  }
}
