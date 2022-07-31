import 'package:injectable/injectable.dart';
import 'package:popular_movies/data/mapper/movie_response_to_movie_mapper.dart';
import 'package:popular_movies/data/source/movie_remote_data_source.dart';
import 'package:popular_movies/data/source/remote/service/movie_api_service.dart';
import 'package:popular_movies/domain/model/movie.dart';

@Injectable(as: MovieRemoteDataSource)
class MovieRemoteDataSourceImpl extends MovieRemoteDataSource {
  final MovieResponseToMovieMapper _movieResponseToMovieMapper;
  final MovieApiService _movieApiService;

  MovieRemoteDataSourceImpl(this._movieResponseToMovieMapper, this._movieApiService);

  @override
  Future<Movie> getMovieDetails(int id) async {
    final movie = await _movieApiService.getMovieDetails(id);
    return _movieResponseToMovieMapper.fromModel(movie);
  }

  @override
  Future<List<Movie>> getMovies() async {
    final movies = await _movieApiService.getMovies();
    return movies.results.map((e) => _movieResponseToMovieMapper.fromModel(e)).toList();
  }
}
