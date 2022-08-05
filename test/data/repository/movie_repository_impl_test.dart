import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:popular_movies/core/movie_data_factory.dart';
import 'package:popular_movies/core/network_error.dart';
import 'package:popular_movies/data/repository/movie_repository_impl.dart';
import 'package:popular_movies/domain/model/movie.dart';
import 'package:popular_movies/domain/model/movie_details.dart';

import 'movie_repository_impl_test.mocks.dart';

@GenerateMocks([MovieRepositoryImpl])
void main() {
  MockMovieRepositoryImpl mockMovieRepository = MockMovieRepositoryImpl();
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
      final mockError = Left<NetworkError, List<Movie>>(MovieDataFactory.getNetworkError());
      when(mockMovieRepository.getPopularMovies()).thenAnswer(
        (realInvocation) async => mockError,
      );
      final movies = await mockMovieRepository.getPopularMovies();
      expectSync((movies as Left<NetworkError, List<Movie>>).value.errorMessage, mockError.value.errorMessage);
    });
  });

  group('getMovieDetail function testing', () {
    test('success test', () async {
      final mockValue = Right<NetworkError, MovieDetails>(MovieDataFactory.getMovieDetails());
      when(mockMovieRepository.getMovieDetail(0)).thenAnswer(
        (realInvocation) async => mockValue,
      );
      final movies = await mockMovieRepository.getMovieDetail(0);
      expectSync((movies as Right<NetworkError, MovieDetails>).value.title, mockValue.value.title);
    });
    test('error test', () async {
      final mockError = Left<NetworkError, MovieDetails>(MovieDataFactory.getNetworkError());
      when(mockMovieRepository.getMovieDetail(0)).thenAnswer(
        (realInvocation) async => mockError,
      );
      final movies = await mockMovieRepository.getMovieDetail(0);
      expectSync((movies as Left<NetworkError, MovieDetails>).value.errorMessage, mockError.value.errorMessage);
    });
  });
}
