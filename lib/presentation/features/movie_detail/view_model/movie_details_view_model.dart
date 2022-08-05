import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:popular_movies/domain/usecases/get_movie_detail_use_case.dart';
import 'package:popular_movies/presentation/features/movie_detail/state/movie_details_state.dart';

import '../../../../domain/usecases/get_movie_videos_use_case.dart';

@injectable
class MoviesDetailsViewModel extends Cubit<MovieDetailState> {
  final GetMovieDetailUseCase _getMovieDetailUseCase;
  final GetMovieVideosUseCase _getMovieVideosUseCase;

  MoviesDetailsViewModel(this._getMovieDetailUseCase, this._getMovieVideosUseCase) : super(const MovieDetailState());

  void initialize(int id) {
    getMovieDetails(id);
    getVideos(id);
  }

  void getMovieDetails(int id) async {
    getVideos(id);
    final result = await _getMovieDetailUseCase.execute(id);
    result.fold((l) {
      emit(state.copyWith(movieDetailResultState: MovieDetailResultState.error(l)));
    }, (r) {
      emit(state.copyWith(
        movieDetailResultState: MovieDetailResultState.result(r),
        title: r.title,
      ));
    });
  }

  void getVideos(int id) async {
    final result = await _getMovieVideosUseCase.execute(id);
    result.forEach((videos) {
      emit(
        state.copyWith(
          videos: videos.where((video) => video.site == "YouTube" && video.type == "Trailer").toList(),
        ),
      );
    });
  }
}
