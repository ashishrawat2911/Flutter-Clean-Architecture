// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie_response_to_movie_details_mapper.dart';

// **************************************************************************
// MapperGenerator
// **************************************************************************

@LazySingleton(as: MovieResponseToMovieDetailsMapper)
class MovieResponseToMovieDetailsMapperImpl
    extends MovieResponseToMovieDetailsMapper {
  MovieResponseToMovieDetailsMapperImpl() : super();

  @override
  MovieDetails fromModel(MovieResponseModel model) {
    final moviedetails = MovieDetails(
        model.backdropPath, model.title, model.voteAverage, model.overview);
    return moviedetails;
  }
}
