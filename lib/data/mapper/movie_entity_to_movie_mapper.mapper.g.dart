// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie_entity_to_movie_mapper.dart';

// **************************************************************************
// MapperGenerator
// **************************************************************************

@LazySingleton(as: MovieEntityToMovieMapper)
class MovieEntityToMovieMapperImpl extends MovieEntityToMovieMapper {
  MovieEntityToMovieMapperImpl() : super();

  @override
  Movie fromModel(MovieEntity model) {
    final movie = Movie(model.id, model.posterPath, model.title, model.voteAverage, model.overview);
    return movie;
  }
}
