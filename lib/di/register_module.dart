import 'package:injectable/injectable.dart';
import 'package:popular_movies/data/source/local/movie_dao.dart';
import 'package:popular_movies/data/source/local/movie_database.dart';
import 'package:popular_movies/res/constants.dart';

@module
abstract class DatabaseModule {
  @preResolve
  @singleton
  Future<MovieDao> get movieDao async {
    final db = await $FloorMovieDatabase.databaseBuilder(Constants.dbName).build();
    return db.movieDao;
  }
}
