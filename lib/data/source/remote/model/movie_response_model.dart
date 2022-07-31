import 'package:json_annotation/json_annotation.dart';

part 'movie_response_model.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class MovieResponseModel {
  int id;
  String posterPath;
  String backdropPath;
  String title;
  double voteAverage;
  String overview;

  MovieResponseModel(
    this.id,
    this.posterPath,
    this.backdropPath,
    this.title,
    this.voteAverage,
    this.overview,
  );

  factory MovieResponseModel.fromJson(Map<String, dynamic> json) => _$MovieResponseModelFromJson(json);

  Map<String, dynamic> toJson() => _$MovieResponseModelToJson(this);
}
