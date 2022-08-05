import 'package:faker/faker.dart';
import 'package:popular_movies/domain/model/movie_details.dart';

import 'network_error.dart';

class MovieDataFactory {
  static final RandomGenerator _randomGenerator = RandomGenerator();

  static MovieDetails getMovieDetails() {
    return MovieDetails(
      _randomGenerator.string(10),
      _randomGenerator.string(10),
      _randomGenerator.decimal(),
      _randomGenerator.string(10),
    );
  }

  static NetworkError getNetworkError() {
    return NetworkError(_randomGenerator.string(10), _randomGenerator.integer(10));
  }
}
