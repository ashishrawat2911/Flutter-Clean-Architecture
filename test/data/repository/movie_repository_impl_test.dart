import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:popular_movies/core/network_error.dart';
import 'package:popular_movies/domain/model/movie.dart';
import 'package:popular_movies/domain/repository/movie_repository.dart';

import 'movie_repository_impl_test.mocks.dart';

@GenerateMocks([MovieRepository])
void main() {
  MockMovieRepository mockMovieRepository = MockMovieRepository();

  group('getPopularMovies function testing', () {
    test('success test', () async {
      const mockValue = Right<NetworkError, List<Movie>>([]);
      when(mockMovieRepository.getPopularMovies()).thenAnswer(
        (realInvocation) async => mockValue,
      );
      final movies = await mockMovieRepository.getPopularMovies();
      expectSync((movies as Right<NetworkError, List<Movie>>).value.length, mockValue.value.length);
    });
    test('error test', () async {
      final mockError = Left<NetworkError, List<Movie>>(NetworkError("errorMessage", 0));
      when(mockMovieRepository.getPopularMovies()).thenAnswer(
        (realInvocation) async => mockError,
      );
      final movies = await mockMovieRepository.getPopularMovies();
      expectSync((movies as Left<NetworkError, List<Movie>>).value.errorMessage, mockError.value.errorMessage);
    });
  });
}
