import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:popular_movies/core/extention/movie_db_image_extention.dart';
import 'package:popular_movies/domain/model/movie_details.dart';
import 'package:popular_movies/presentation/features/movie_detail/state/movie_details_state.dart';
import 'package:popular_movies/presentation/features/movie_detail/view_model/movie_details_view_model.dart';
import 'package:popular_movies/presentation/view/base_view.dart';

class MoviesDetailScreen extends StatelessWidget {
  final int id;

  const MoviesDetailScreen(this.id, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BaseView<MoviesDetailsViewModel, MovieDetailState>(
      setupViewModel: (viewModel) {
        viewModel.getMovieDetails(id);
      },
      builder: (context, state, viewModel) {
        return Scaffold(
          appBar: AppBar(title: Text(state.title)),
          body: handleMovieUi(state.movieDetailResultState),
        );
      },
    );
  }

  Widget handleMovieUi(MovieDetailResultState movieDetailResultState) {
    return movieDetailResultState.when(loading: () {
      return const Center(
        child: CircularProgressIndicator(),
      );
    }, result: (r) {
      return movies(r);
    }, error: (error) {
      return Center(child: Text(error.errorMessage));
    });
  }

  Widget movies(MovieDetails movie) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CachedNetworkImage(
          imageUrl: movie.backdropPath.getMovieDBImage,
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 10,
              ),
              Text(movie.title, style: const TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(
                height: 10,
              ),
              Text('Ratings: ${movie.voteAverage}'),
              const SizedBox(
                height: 10,
              ),
              Text(movie.overview)
            ],
          ),
        ),
      ],
    );
  }
}
