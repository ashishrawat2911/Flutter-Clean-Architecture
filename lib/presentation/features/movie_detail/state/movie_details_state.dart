import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:popular_movies/core/network_error.dart';
import 'package:popular_movies/domain/model/movie.dart';

import '../../../../domain/model/movie_details.dart';

part 'movie_details_state.freezed.dart';

@freezed
class MovieDetailState with _$MovieDetailState {
  const factory MovieDetailState({
    @Default("") String title,
    @Default(MovieDetailResultState.loading()) MovieDetailResultState movieDetailResultState,
  }) = _MovieDetailState;
}

@freezed
class MovieDetailResultState with _$MovieDetailResultState {
  const factory MovieDetailResultState.loading() = MovieDetailLoading;

  const factory MovieDetailResultState.result(MovieDetails movie) = MovieDetailResult;

  const factory MovieDetailResultState.error(NetworkError error) = MovieDetailError;
}
