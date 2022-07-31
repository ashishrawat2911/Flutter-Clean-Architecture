// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i3;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../data/mapper/movie_entity_to_movie_mapper.dart' as _i6;
import '../data/mapper/movie_response_to_movie_mapper.dart' as _i7;
import '../data/mapper/movie_to_movie_entity_mapper.dart' as _i8;
import '../data/repository/movie_repository_impl.dart' as _i14;
import '../data/source/local/movie_dao.dart' as _i5;
import '../data/source/local/movie_local_data_source.dart' as _i10;
import '../data/source/movie_local_data_source.dart' as _i9;
import '../data/source/movie_remote_data_source.dart' as _i11;
import '../data/source/remote/movie_remote_data_source.dart' as _i12;
import '../data/source/remote/service/movie_api_service.dart' as _i4;
import '../domain/repository/movie_repository.dart' as _i13;
import '../domain/usecases/get_movie_detail_use_case.dart' as _i15;
import '../domain/usecases/get_movies_use_case.dart' as _i17;
import '../domain/usecases/impl/get_movie_detail_use_case_impl.dart' as _i16;
import '../domain/usecases/impl/get_movies_use_case_impl.dart' as _i18;
import '../presentation/features/movie_detail/view_model/movie_details_view_model.dart'
    as _i19;
import '../presentation/features/movies/view_model/movies_view_model.dart'
    as _i20;
import 'register_module.dart' as _i21; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
Future<_i1.GetIt> $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) async {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final registerModule = _$RegisterModule();
  gh.factory<_i3.Dio>(() => registerModule.dio);
  gh.factory<_i4.MovieApiService>(() => _i4.MovieApiService(get<_i3.Dio>()));
  await gh.factoryAsync<_i5.MovieDao>(() => registerModule.movieDao,
      preResolve: true);
  gh.lazySingleton<_i6.MovieEntityToMovieMapper>(
      () => _i6.MovieEntityToMovieMapperImpl());
  gh.lazySingleton<_i7.MovieResponseToMovieMapper>(
      () => _i7.MovieResponseToMovieMapperImpl());
  gh.lazySingleton<_i8.MovieToMovieEntityMapper>(
      () => _i8.MovieToMovieEntityMapperImpl());
  gh.factory<_i9.MovieLocalDataSource>(() => _i10.MovieLocalDataSourceImpl(
      get<_i5.MovieDao>(),
      get<_i6.MovieEntityToMovieMapper>(),
      get<_i8.MovieToMovieEntityMapper>()));
  gh.factory<_i11.MovieRemoteDataSource>(() => _i12.MovieRemoteDataSourceImpl(
      get<_i7.MovieResponseToMovieMapper>(), get<_i4.MovieApiService>()));
  gh.factory<_i13.MovieRepository>(() => _i14.MovieRepositoryImpl(
      get<_i9.MovieLocalDataSource>(), get<_i11.MovieRemoteDataSource>()));
  gh.factory<_i15.GetMovieDetailUseCase>(
      () => _i16.GetMovieDetailUseCaseImpl(get<_i13.MovieRepository>()));
  gh.factory<_i17.GetMoviesUseCase>(
      () => _i18.GetMoviesUseCaseImpl(get<_i13.MovieRepository>()));
  gh.factory<_i19.MoviesDetailsViewModel>(
      () => _i19.MoviesDetailsViewModel(get<_i15.GetMovieDetailUseCase>()));
  gh.factory<_i20.MoviesViewModel>(
      () => _i20.MoviesViewModel(get<_i17.GetMoviesUseCase>()));
  return get;
}

class _$RegisterModule extends _i21.RegisterModule {}
