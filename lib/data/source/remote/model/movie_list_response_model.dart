import 'package:json_annotation/json_annotation.dart';

import 'movie_response_model.dart';

part 'movie_list_response_model.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class MovieListResponseModel {
  int page;

  int totalResults;

  int totalPages;

  List<MovieResponseModel> results;

  MovieListResponseModel(this.page, this.totalResults, this.totalPages, this.results);

  factory MovieListResponseModel.fromJson(Map<String, dynamic> json) => _$MovieListResponseModelFromJson(json);

  Map<String, dynamic> toJson() => _$MovieListResponseModelToJson(this);
}
