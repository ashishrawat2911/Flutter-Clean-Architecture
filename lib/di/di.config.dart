// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:connectivity_plus/connectivity_plus.dart' as _i3;
import 'package:dio/dio.dart' as _i5;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../core/services/connectivity_service.dart' as _i4;
import '../data/mapper/movie_entity_to_movie_details_mapper.dart' as _i8;
import '../data/repository/movie_repository_impl.dart' as _i17;
import '../data/source/local/database/dao/movie_dao.dart' as _i12;
import '../data/source/local/database/db/movie_database.dart' as _i7;
import '../data/source/local/movie_local_data_source.dart' as _i14;
import '../data/source/movie_data_store_factory.dart' as _i15;
import '../data/source/movie_local_data_source.dart' as _i13;
import '../data/source/movie_remote_data_source.dart' as _i9;
import '../data/source/remote/movie_remote_data_source.dart' as _i10;
import '../data/source/remote/network_error_handler.dart' as _i11;
import '../data/source/remote/service/movie_api_service.dart' as _i6;
import '../domain/repository/movie_repository.dart' as _i16;
import '../domain/usecases/get_movie_detail_use_case.dart' as _i18;
import '../domain/usecases/get_movie_videos_use_case.dart' as _i20;
import '../domain/usecases/get_movies_use_case.dart' as _i22;
import '../domain/usecases/impl/get_movie_detail_use_case_impl.dart' as _i19;
import '../domain/usecases/impl/get_movie_videos_use_case_impl.dart' as _i21;
import '../domain/usecases/impl/get_movies_use_case_impl.dart' as _i23;
import '../presentation/features/movie_detail/view_model/movie_details_view_model.dart'
    as _i24;
import '../presentation/features/movies/view_model/movies_view_model.dart'
    as _i25;
import 'module/database_module.dart' as _i27;
import 'module/network_module.dart'
    as _i26; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
Future<_i1.GetIt> $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) async {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final networkModule = _$NetworkModule();
  final databaseModule = _$DatabaseModule();
  gh.singleton<_i3.Connectivity>(networkModule.connectivity);
  gh.singleton<_i4.ConnectivityService>(
      _i4.ConnectivityService(get<_i3.Connectivity>()));
  gh.singleton<_i5.Dio>(networkModule.dio);
  gh.singleton<_i6.MovieApiService>(
      networkModule.movieApiService(get<_i5.Dio>()));
  await gh.singletonAsync<_i7.MovieDatabase>(() => databaseModule.movieDatabase,
      preResolve: true);
  gh.lazySingleton<_i8.MovieMapper>(() => _i8.MovieMapperImpl());
  gh.factory<_i9.MovieRemoteDataSource>(
      () => _i10.MovieRemoteDataSourceImpl(get<_i6.MovieApiService>()));
  gh.singleton<_i11.NetworkErrorHandler>(_i11.NetworkErrorHandler());
  gh.lazySingleton<_i12.MovieDao>(
      () => databaseModule.movieDao(get<_i7.MovieDatabase>()));
  gh.factory<_i13.MovieLocalDataSource>(
      () => _i14.MovieLocalDataSourceImpl(get<_i12.MovieDao>()));
  gh.singleton<_i15.MovieDataStoreFactory>(_i15.MovieDataStoreFactory(
      get<_i8.MovieMapper>(),
      get<_i13.MovieLocalDataSource>(),
      get<_i9.MovieRemoteDataSource>(),
      get<_i4.ConnectivityService>()));
  gh.factory<_i16.MovieRepository>(() => _i17.MovieRepositoryImpl(
      get<_i15.MovieDataStoreFactory>(), get<_i11.NetworkErrorHandler>()));
  gh.factory<_i18.GetMovieDetailUseCase>(
      () => _i19.GetMovieDetailUseCaseImpl(get<_i16.MovieRepository>()));
  gh.factory<_i20.GetMovieVideosUseCase>(
      () => _i21.GetMovieVideosUseCaseImpl(get<_i16.MovieRepository>()));
  gh.factory<_i22.GetMoviesUseCase>(
      () => _i23.GetMoviesUseCaseImpl(get<_i16.MovieRepository>()));
  gh.factory<_i24.MoviesDetailsViewModel>(() => _i24.MoviesDetailsViewModel(
      get<_i18.GetMovieDetailUseCase>(), get<_i20.GetMovieVideosUseCase>()));
  gh.factory<_i25.MoviesViewModel>(
      () => _i25.MoviesViewModel(get<_i22.GetMoviesUseCase>()));
  return get;
}

class _$NetworkModule extends _i26.NetworkModule {}

class _$DatabaseModule extends _i27.DatabaseModule {}
