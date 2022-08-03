import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:popular_movies/data/source/local/movie_dao.dart';
import 'package:popular_movies/data/source/local/movie_database.dart';
import 'package:popular_movies/res/constants.dart';

@module
abstract class RegisterModule {
  @preResolve
  @singleton
  Future<MovieDao> get movieDao async {
    final db = await $FloorMovieDatabase.databaseBuilder(Constants.dbName).build();
    return db.movieDao;
  }

  @singleton
  Dio get dio => Dio();

  @singleton
  Connectivity get connectivity => Connectivity();
}
