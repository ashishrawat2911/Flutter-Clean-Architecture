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
import '../data/mapper/movie_entity_to_movie_mapper.dart' as _i9;
import '../data/mapper/movie_response_to_movie_details_mapper.dart' as _i14;
import '../data/mapper/movie_response_to_movie_entity_mapper.dart' as _i15;
import '../data/mapper/movie_response_to_movie_mapper.dart' as _i16;
import '../data/repository/movie_repository_impl.dart' as _i19;
import '../data/source/local/movie_dao.dart' as _i7;
import '../data/source/local/movie_local_data_source.dart' as _i11;
import '../data/source/movie_data_store_factory.dart' as _i17;
import '../data/source/movie_local_data_source.dart' as _i10;
import '../data/source/movie_remote_data_source.dart' as _i12;
import '../data/source/remote/movie_remote_data_source.dart' as _i13;
import '../data/source/remote/service/movie_api_service.dart' as _i6;
import '../domain/repository/movie_repository.dart' as _i18;
import '../domain/usecases/get_movie_detail_use_case.dart' as _i20;
import '../domain/usecases/get_movies_use_case.dart' as _i22;
import '../domain/usecases/impl/get_movie_detail_use_case_impl.dart' as _i21;
import '../domain/usecases/impl/get_movies_use_case_impl.dart' as _i23;
import '../presentation/features/movie_detail/view_model/movie_details_view_model.dart'
    as _i24;
import '../presentation/features/movies/view_model/movies_view_model.dart'
    as _i25;
import 'register_module.dart' as _i26; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
Future<_i1.GetIt> $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) async {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final registerModule = _$RegisterModule();
  gh.singleton<_i3.Connectivity>(registerModule.connectivity);
  gh.singleton<_i4.ConnectivityService>(
      _i4.ConnectivityService(get<_i3.Connectivity>()));
  gh.singleton<_i5.Dio>(registerModule.dio);
  gh.singleton<_i6.MovieApiService>(_i6.MovieApiService(get<_i5.Dio>()));
  await gh.singletonAsync<_i7.MovieDao>(() => registerModule.movieDao,
      preResolve: true);
  gh.lazySingleton<_i8.MovieEntityToMovieDetailsMapper>(
      () => _i8.MovieEntityToMovieDetailsMapperImpl());
  gh.lazySingleton<_i9.MovieEntityToMovieMapper>(
      () => _i9.MovieEntityToMovieMapperImpl());
  gh.factory<_i10.MovieLocalDataSource>(
      () => _i11.MovieLocalDataSourceImpl(get<_i7.MovieDao>()));
  gh.factory<_i12.MovieRemoteDataSource>(
      () => _i13.MovieRemoteDataSourceImpl(get<_i6.MovieApiService>()));
  gh.lazySingleton<_i14.MovieResponseToMovieDetailsMapper>(
      () => _i14.MovieResponseToMovieDetailsMapperImpl());
  gh.lazySingleton<_i15.MovieResponseToMovieEntityMapper>(
      () => _i15.MovieResponseToMovieEntityMapperImpl());
  gh.lazySingleton<_i16.MovieResponseToMovieMapper>(
      () => _i16.MovieResponseToMovieMapperImpl());
  gh.singleton<_i17.MovieDataStoreFactory>(_i17.MovieDataStoreFactory(
      get<_i9.MovieEntityToMovieMapper>(),
      get<_i15.MovieResponseToMovieEntityMapper>(),
      get<_i8.MovieEntityToMovieDetailsMapper>(),
      get<_i10.MovieLocalDataSource>(),
      get<_i12.MovieRemoteDataSource>(),
      get<_i4.ConnectivityService>(),
      get<_i16.MovieResponseToMovieMapper>(),
      get<_i14.MovieResponseToMovieDetailsMapper>()));
  gh.factory<_i18.MovieRepository>(
      () => _i19.MovieRepositoryImpl(get<_i17.MovieDataStoreFactory>()));
  gh.factory<_i20.GetMovieDetailUseCase>(
      () => _i21.GetMovieDetailUseCaseImpl(get<_i18.MovieRepository>()));
  gh.factory<_i22.GetMoviesUseCase>(
      () => _i23.GetMoviesUseCaseImpl(get<_i18.MovieRepository>()));
  gh.factory<_i24.MoviesDetailsViewModel>(
      () => _i24.MoviesDetailsViewModel(get<_i20.GetMovieDetailUseCase>()));
  gh.factory<_i25.MoviesViewModel>(
      () => _i25.MoviesViewModel(get<_i22.GetMoviesUseCase>()));
  return get;
}

class _$RegisterModule extends _i26.RegisterModule {}
