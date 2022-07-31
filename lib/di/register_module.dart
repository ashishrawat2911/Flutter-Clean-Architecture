import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:popular_movies/data/source/local/movie_dao.dart';
import 'package:popular_movies/data/source/local/movie_database.dart';

@module
abstract class RegisterModule {
  @preResolve
  Future<MovieDao> get movieDao async {
    final db = await $FloorMovieDatabase.databaseBuilder('app_database.db').build();
    return db.movieDao;
  }

  Dio get dio => Dio();
}
