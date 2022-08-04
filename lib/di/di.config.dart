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
import '../data/mapper/movie_entity_to_movie_details_mapper.dart' as _i10;
import '../data/repository/movie_repository_impl.dart' as _i16;
import '../data/source/local/movie_dao.dart' as _i7;
import '../data/source/local/movie_local_data_source.dart' as _i9;
import '../data/source/movie_data_store_factory.dart' as _i14;
import '../data/source/movie_local_data_source.dart' as _i8;
import '../data/source/movie_remote_data_source.dart' as _i11;
import '../data/source/remote/movie_remote_data_source.dart' as _i12;
import '../data/source/remote/network_error_handler.dart' as _i13;
import '../data/source/remote/service/movie_api_service.dart' as _i6;
import '../domain/repository/movie_repository.dart' as _i15;
import '../domain/usecases/get_movie_detail_use_case.dart' as _i17;
import '../domain/usecases/get_movies_use_case.dart' as _i19;
import '../domain/usecases/impl/get_movie_detail_use_case_impl.dart' as _i18;
import '../domain/usecases/impl/get_movies_use_case_impl.dart' as _i20;
import '../presentation/features/movie_detail/view_model/movie_details_view_model.dart'
    as _i21;
import '../presentation/features/movies/view_model/movies_view_model.dart'
    as _i22;
import 'network_module.dart' as _i23;
import 'register_module.dart' as _i24; // ignore_for_file: unnecessary_lambdas

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
  gh.singleton<_i6.MovieApiService>(networkModule.movieApiService);
  await gh.singletonAsync<_i7.MovieDao>(() => databaseModule.movieDao,
      preResolve: true);
  gh.factory<_i8.MovieLocalDataSource>(
      () => _i9.MovieLocalDataSourceImpl(get<_i7.MovieDao>()));
  gh.lazySingleton<_i10.MovieMapper>(() => _i10.MovieMapperImpl());
  gh.factory<_i11.MovieRemoteDataSource>(
      () => _i12.MovieRemoteDataSourceImpl(get<_i6.MovieApiService>()));
  gh.singleton<_i13.NetworkErrorHandler>(_i13.NetworkErrorHandler());
  gh.singleton<String>(networkModule.apiKey, instanceName: 'api_key');
  gh.singleton<_i14.MovieDataStoreFactory>(_i14.MovieDataStoreFactory(
      get<_i10.MovieMapper>(),
      get<_i8.MovieLocalDataSource>(),
      get<_i11.MovieRemoteDataSource>(),
      get<_i4.ConnectivityService>()));
  gh.factory<_i15.MovieRepository>(() => _i16.MovieRepositoryImpl(
      get<_i14.MovieDataStoreFactory>(), get<_i13.NetworkErrorHandler>()));
  gh.factory<_i17.GetMovieDetailUseCase>(
      () => _i18.GetMovieDetailUseCaseImpl(get<_i15.MovieRepository>()));
  gh.factory<_i19.GetMoviesUseCase>(
      () => _i20.GetMoviesUseCaseImpl(get<_i15.MovieRepository>()));
  gh.factory<_i21.MoviesDetailsViewModel>(
      () => _i21.MoviesDetailsViewModel(get<_i17.GetMovieDetailUseCase>()));
  gh.factory<_i22.MoviesViewModel>(
      () => _i22.MoviesViewModel(get<_i19.GetMoviesUseCase>()));
  return get;
}

class _$NetworkModule extends _i23.NetworkModule {}

class _$DatabaseModule extends _i24.DatabaseModule {}
