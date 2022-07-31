import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:popular_movies/domain/usecases/get_movie_detail_use_case.dart';
import 'package:popular_movies/presentation/features/movie_detail/state/movie_details_state.dart';

@injectable
class MoviesDetailsViewModel extends Cubit<MovieDetailState> {
  final GetMovieDetailUseCase _getMovieDetailUseCase;

  MoviesDetailsViewModel(this._getMovieDetailUseCase) : super(const MovieDetailState());

  void getMovieDetails(int id) async {
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
}
