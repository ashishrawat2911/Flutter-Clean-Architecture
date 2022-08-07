// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie_domain_mapper.dart';

// **************************************************************************
// MapperGenerator
// **************************************************************************

@LazySingleton(as: MovieDomainMapper)
class MovieDomainMapperImpl extends MovieDomainMapper {
  MovieDomainMapperImpl() : super();

  @override
  MovieDetails movieEntityToMovieDetails(MovieEntity movieEntity) {
    final moviedetails = MovieDetails(movieEntity.backdropPath,
        movieEntity.title, movieEntity.voteAverage, movieEntity.overview);
    return moviedetails;
  }

  @override
  Movie movieEntityToMovie(MovieEntity movieEntity) {
    final movie = Movie(movieEntity.id, movieEntity.posterPath,
        movieEntity.title, movieEntity.voteAverage, movieEntity.overview);
    return movie;
  }

  @override
  MovieDetails movieResponseToMovieDetails(
      MovieResponseModel movieResponseModel) {
    final moviedetails = MovieDetails(
        movieResponseModel.backdropPath,
        movieResponseModel.title,
        movieResponseModel.voteAverage,
        movieResponseModel.overview);
    return moviedetails;
  }

  @override
  MovieEntity movieResponseToMovieEntity(
      MovieResponseModel movieResponseModel) {
    final movieentity = MovieEntity(
        movieResponseModel.id,
        movieResponseModel.posterPath,
        movieResponseModel.backdropPath,
        movieResponseModel.title,
        movieResponseModel.voteAverage,
        movieResponseModel.overview);
    return movieentity;
  }

  @override
  Movie movieResponseToMovie(MovieResponseModel movieResponseModel) {
    final movie = Movie(
        movieResponseModel.id,
        movieResponseModel.posterPath,
        movieResponseModel.title,
        movieResponseModel.voteAverage,
        movieResponseModel.overview);
    return movie;
  }

  @override
  Video videoResponseToVideo(VideoResponse videoResponse) {
    final video = Video(videoResponse.id, videoResponse.key, videoResponse.name,
        videoResponse.site, videoResponse.size, videoResponse.type);
    return video;
  }
}
