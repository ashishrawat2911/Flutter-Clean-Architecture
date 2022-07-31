// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie_response_to_movie_mapper.dart';

// **************************************************************************
// MapperGenerator
// **************************************************************************

@LazySingleton(as: MovieResponseToMovieMapper)
class MovieResponseToMovieMapperImpl extends MovieResponseToMovieMapper {
  MovieResponseToMovieMapperImpl() : super();

  @override
  Movie fromModel(MovieResponseModel model) {
    final movie = Movie(model.id, model.posterPath, model.backdropPath,
        model.title, model.voteAverage, model.overview);
    return movie;
  }
}
