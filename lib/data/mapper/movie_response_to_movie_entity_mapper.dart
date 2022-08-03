import 'package:injectable/injectable.dart';
import 'package:popular_movies/data/source/local/model/movie_entity.dart';
import 'package:popular_movies/data/source/remote/model/movie_response_model.dart';
import 'package:smartstruct/smartstruct.dart';

part 'movie_response_to_movie_entity_mapper.mapper.g.dart';

@Mapper(useInjection: true)
abstract class MovieResponseToMovieEntityMapper {
  MovieEntity fromModel(MovieResponseModel model);
}
