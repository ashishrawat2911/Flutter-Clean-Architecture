import 'package:flutter/material.dart';
import 'package:popular_movies/presentation/features/movie_detail/state/movie_details_state.dart';
import 'package:popular_movies/presentation/features/movie_detail/view_model/movie_details_view_model.dart';
import 'package:popular_movies/presentation/view/base_view.dart';

class MoviesDetailScreen extends StatelessWidget {
  final int id;

  const MoviesDetailScreen(this.id, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BaseView<MoviesDetailsViewModel, MovieDetailState>(
      setupViewModel: (viewModel) {},
      builder: (context, state, viewModel) {
        return Container();
      },
    );
  }
}
