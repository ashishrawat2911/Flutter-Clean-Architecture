// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie_entity_to_movie_details_mapper.dart';

// **************************************************************************
// MapperGenerator
// **************************************************************************

@LazySingleton(as: MovieEntityToMovieDetailsMapper)
class MovieEntityToMovieDetailsMapperImpl
    extends MovieEntityToMovieDetailsMapper {
  MovieEntityToMovieDetailsMapperImpl() : super();

  @override
  MovieDetails fromModel(MovieEntity model) {
    final moviedetails = MovieDetails(
        model.backdropPath, model.title, model.voteAverage, model.overview);
    return moviedetails;
  }
}
