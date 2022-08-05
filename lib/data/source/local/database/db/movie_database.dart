import 'dart:async';

import 'package:floor/floor.dart';
import 'package:sqflite/sqflite.dart' as sqflite;

import '../dao/movie_dao.dart';
import '../model/movie_entity.dart';

part 'movie_database.g.dart'; // the generated code will be there

@Database(version: 1, entities: [MovieEntity])
abstract class MovieDatabase extends FloorDatabase {
  MovieDao get movieDao;
}
