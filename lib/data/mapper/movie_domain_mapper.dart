import 'package:popular_movies/data/source/local/database/model/movie_entity.dart';
import 'package:popular_movies/data/source/remote/model/video_response.dart';
import 'package:popular_movies/domain/model/movie.dart';
import 'package:popular_movies/domain/model/movie_details.dart';
import 'package:popular_movies/domain/model/video.dart';
import 'package:smartstruct/smartstruct.dart';
import 'package:injectable/injectable.dart';
import '../source/remote/model/movie_response_model.dart';

part 'movie_domain_mapper.mapper.g.dart';

@Mapper(useInjection: true)
abstract class MovieDomainMapper {
  MovieDetails movieEntityToMovieDetails(MovieEntity movieEntity);

  Movie movieEntityToMovie(MovieEntity movieEntity);

  MovieDetails movieResponseToMovieDetails(MovieResponseModel movieResponseModel);

  MovieEntity movieResponseToMovieEntity(MovieResponseModel movieResponseModel);

  Movie movieResponseToMovie(MovieResponseModel movieResponseModel);

  Video videoResponseToVideo(VideoResponse videoResponse);
}
