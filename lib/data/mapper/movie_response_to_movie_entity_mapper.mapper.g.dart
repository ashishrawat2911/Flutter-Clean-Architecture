// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie_response_to_movie_entity_mapper.dart';

// **************************************************************************
// MapperGenerator
// **************************************************************************

@LazySingleton(as: MovieResponseToMovieEntityMapper)
class MovieResponseToMovieEntityMapperImpl
    extends MovieResponseToMovieEntityMapper {
  MovieResponseToMovieEntityMapperImpl() : super();

  @override
  MovieEntity fromModel(MovieResponseModel model) {
    final movieentity = MovieEntity(model.id, model.posterPath,
        model.backdropPath, model.title, model.voteAverage, model.overview);
    return movieentity;
  }
}
