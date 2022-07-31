// database.dart

import 'dart:async';

import 'package:floor/floor.dart';
import 'package:popular_movies/data/source/local/model/movie_entity.dart';
import 'package:popular_movies/data/source/local/movie_dao.dart';
import 'package:sqflite/sqflite.dart' as sqflite;

part 'movie_database.g.dart'; // the generated code will be there

@Database(version: 1, entities: [MovieEntity])
abstract class MovieDatabase extends FloorDatabase {
  MovieDao get movieDao;
}
