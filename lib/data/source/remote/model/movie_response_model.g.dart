// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MovieResponseModel _$MovieResponseModelFromJson(Map<String, dynamic> json) =>
    MovieResponseModel(
      json['id'] as int,
      json['poster_path'] as String,
      json['backdrop_path'] as String,
      json['title'] as String,
      (json['vote_average'] as num).toDouble(),
      json['overview'] as String,
    );

Map<String, dynamic> _$MovieResponseModelToJson(MovieResponseModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'poster_path': instance.posterPath,
      'backdrop_path': instance.backdropPath,
      'title': instance.title,
      'vote_average': instance.voteAverage,
      'overview': instance.overview,
    };
