// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie_to_movie_entity_mapper.dart';

// **************************************************************************
// MapperGenerator
// **************************************************************************

@LazySingleton(as: MovieToMovieEntityMapper)
class MovieToMovieEntityMapperImpl extends MovieToMovieEntityMapper {
  MovieToMovieEntityMapperImpl() : super();

  @override
  MovieEntity fromModel(Movie model) {
    final movieentity = MovieEntity(model.id, model.posterPath,
        model.backdropPath, model.title, model.voteAverage, model.overview);
    return movieentity;
  }
}
