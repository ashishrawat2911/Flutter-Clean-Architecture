// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie_entity_to_movie_details_mapper.dart';

// **************************************************************************
// MapperGenerator
// **************************************************************************

@LazySingleton(as: MovieMapper)
class MovieMapperImpl extends MovieMapper {
  MovieMapperImpl() : super();

  @override
  MovieDetails movieEntityToMovieDetails(MovieEntity model) {
    final moviedetails = MovieDetails(
        model.backdropPath, model.title, model.voteAverage, model.overview);
    return moviedetails;
  }

  @override
  Movie movieEntityToMovie(MovieEntity model) {
    final movie = Movie(model.id, model.posterPath, model.title,
        model.voteAverage, model.overview);
    return movie;
  }

  @override
  MovieDetails movieResponseToMovieDetails(MovieResponseModel model) {
    final moviedetails = MovieDetails(
        model.backdropPath, model.title, model.voteAverage, model.overview);
    return moviedetails;
  }

  @override
  MovieEntity movieResponseToMovieEntity(MovieResponseModel model) {
    final movieentity = MovieEntity(model.id, model.posterPath,
        model.backdropPath, model.title, model.voteAverage, model.overview);
    return movieentity;
  }

  @override
  Movie movieResponseToMovie(MovieResponseModel model) {
    final movie = Movie(model.id, model.posterPath, model.title,
        model.voteAverage, model.overview);
    return movie;
  }
}
