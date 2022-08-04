import 'package:injectable/injectable.dart';
import 'package:popular_movies/data/source/local/model/movie_entity.dart';
import 'package:popular_movies/domain/model/movie.dart';
import 'package:popular_movies/domain/model/movie_details.dart';
import 'package:smartstruct/smartstruct.dart';

import '../source/remote/model/movie_response_model.dart';

part 'movie_entity_to_movie_details_mapper.mapper.g.dart';

@Mapper(useInjection: true)
abstract class MovieMapper {
  MovieDetails movieEntityToMovieDetails(MovieEntity model);

  Movie movieEntityToMovie(MovieEntity model);

  MovieDetails movieResponseToMovieDetails(MovieResponseModel model);

  MovieEntity movieResponseToMovieEntity(MovieResponseModel model);

  Movie movieResponseToMovie(MovieResponseModel model);
}

class A {
  String a;

  A(this.a);

  factory A.to(String a) {
    return A(a + a + a + a);
  }

  A.too(this.a);
}

qq() {
  A a = A("a");
  A aa = A.to("a");
  A too = A.too("a");
}
