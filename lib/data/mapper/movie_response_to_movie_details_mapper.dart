import 'package:injectable/injectable.dart';
import 'package:popular_movies/data/source/remote/model/movie_response_model.dart';
import 'package:popular_movies/domain/model/movie_details.dart';
import 'package:smartstruct/smartstruct.dart';

part 'movie_response_to_movie_details_mapper.mapper.g.dart';

@Mapper(useInjection: true)
abstract class MovieResponseToMovieDetailsMapper {
  MovieDetails fromModel(MovieResponseModel model);
}
