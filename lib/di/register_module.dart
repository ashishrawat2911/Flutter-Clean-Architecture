import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:popular_movies/data/source/local/movie_dao.dart';
import 'package:popular_movies/data/source/local/movie_database.dart';
import 'package:popular_movies/res/constants.dart';

@module
abstract class RegisterModule {
  @preResolve
  Future<MovieDao> get movieDao async {
    final db = await $FloorMovieDatabase.databaseBuilder(Constants.dbName).build();
    return db.movieDao;
  }

  Dio get dio => Dio();
}
