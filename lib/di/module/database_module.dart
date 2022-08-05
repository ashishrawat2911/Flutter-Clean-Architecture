import 'package:injectable/injectable.dart';
import 'package:popular_movies/data/source/local/database/dao/movie_dao.dart';
import 'package:popular_movies/data/source/local/database/db/movie_database.dart';
import 'package:popular_movies/res/constants.dart';

@module
abstract class DatabaseModule {
  @preResolve
  @singleton
  Future<MovieDatabase> get movieDatabase async {
    final db = await $FloorMovieDatabase.databaseBuilder(Constants.dbName).build();
    return db;
  }

  @lazySingleton
  MovieDao movieDao(MovieDatabase movieDatabase) => movieDatabase.movieDao;
}
