import 'package:injectable/injectable.dart';
import 'package:popular_movies/data/source/local/model/movie_entity.dart';
import 'package:popular_movies/domain/model/movie.dart';
import 'package:smartstruct/smartstruct.dart';

part 'movie_entity_to_movie_mapper.mapper.g.dart';

@Mapper(useInjection: true)
abstract class MovieEntityToMovieMapper {
  Movie fromModel(MovieEntity model);
}
