// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'movie_details_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$MovieDetailStateTearOff {
  const _$MovieDetailStateTearOff();

  _MovieDetailState call(
      {String title = "",
      MovieDetailResultState movieDetailResultState =
          const MovieDetailResultState.loading()}) {
    return _MovieDetailState(
      title: title,
      movieDetailResultState: movieDetailResultState,
    );
  }
}

/// @nodoc
const $MovieDetailState = _$MovieDetailStateTearOff();

/// @nodoc
mixin _$MovieDetailState {
  String get title => throw _privateConstructorUsedError;
  MovieDetailResultState get movieDetailResultState =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MovieDetailStateCopyWith<MovieDetailState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MovieDetailStateCopyWith<$Res> {
  factory $MovieDetailStateCopyWith(
          MovieDetailState value, $Res Function(MovieDetailState) then) =
      _$MovieDetailStateCopyWithImpl<$Res>;
  $Res call({String title, MovieDetailResultState movieDetailResultState});

  $MovieDetailResultStateCopyWith<$Res> get movieDetailResultState;
}

/// @nodoc
class _$MovieDetailStateCopyWithImpl<$Res>
    implements $MovieDetailStateCopyWith<$Res> {
  _$MovieDetailStateCopyWithImpl(this._value, this._then);

  final MovieDetailState _value;
  // ignore: unused_field
  final $Res Function(MovieDetailState) _then;

  @override
  $Res call({
    Object? title = freezed,
    Object? movieDetailResultState = freezed,
  }) {
    return _then(_value.copyWith(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      movieDetailResultState: movieDetailResultState == freezed
          ? _value.movieDetailResultState
          : movieDetailResultState // ignore: cast_nullable_to_non_nullable
              as MovieDetailResultState,
    ));
  }

  @override
  $MovieDetailResultStateCopyWith<$Res> get movieDetailResultState {
    return $MovieDetailResultStateCopyWith<$Res>(_value.movieDetailResultState,
        (value) {
      return _then(_value.copyWith(movieDetailResultState: value));
    });
  }
}

/// @nodoc
abstract class _$MovieDetailStateCopyWith<$Res>
    implements $MovieDetailStateCopyWith<$Res> {
  factory _$MovieDetailStateCopyWith(
          _MovieDetailState value, $Res Function(_MovieDetailState) then) =
      __$MovieDetailStateCopyWithImpl<$Res>;
  @override
  $Res call({String title, MovieDetailResultState movieDetailResultState});

  @override
  $MovieDetailResultStateCopyWith<$Res> get movieDetailResultState;
}

/// @nodoc
class __$MovieDetailStateCopyWithImpl<$Res>
    extends _$MovieDetailStateCopyWithImpl<$Res>
    implements _$MovieDetailStateCopyWith<$Res> {
  __$MovieDetailStateCopyWithImpl(
      _MovieDetailState _value, $Res Function(_MovieDetailState) _then)
      : super(_value, (v) => _then(v as _MovieDetailState));

  @override
  _MovieDetailState get _value => super._value as _MovieDetailState;

  @override
  $Res call({
    Object? title = freezed,
    Object? movieDetailResultState = freezed,
  }) {
    return _then(_MovieDetailState(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      movieDetailResultState: movieDetailResultState == freezed
          ? _value.movieDetailResultState
          : movieDetailResultState // ignore: cast_nullable_to_non_nullable
              as MovieDetailResultState,
    ));
  }
}

/// @nodoc

class _$_MovieDetailState implements _MovieDetailState {
  const _$_MovieDetailState(
      {this.title = "",
      this.movieDetailResultState = const MovieDetailResultState.loading()});

  @JsonKey()
  @override
  final String title;
  @JsonKey()
  @override
  final MovieDetailResultState movieDetailResultState;

  @override
  String toString() {
    return 'MovieDetailState(title: $title, movieDetailResultState: $movieDetailResultState)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _MovieDetailState &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality()
                .equals(other.movieDetailResultState, movieDetailResultState));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(movieDetailResultState));

  @JsonKey(ignore: true)
  @override
  _$MovieDetailStateCopyWith<_MovieDetailState> get copyWith =>
      __$MovieDetailStateCopyWithImpl<_MovieDetailState>(this, _$identity);
}

abstract class _MovieDetailState implements MovieDetailState {
  const factory _MovieDetailState(
      {String title,
      MovieDetailResultState movieDetailResultState}) = _$_MovieDetailState;

  @override
  String get title;
  @override
  MovieDetailResultState get movieDetailResultState;
  @override
  @JsonKey(ignore: true)
  _$MovieDetailStateCopyWith<_MovieDetailState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$MovieDetailResultStateTearOff {
  const _$MovieDetailResultStateTearOff();

  MovieDetailLoading loading() {
    return const MovieDetailLoading();
  }

  MovieDetailResult result(Movie movie) {
    return MovieDetailResult(
      movie,
    );
  }

  MovieDetailError error(NetworkError error) {
    return MovieDetailError(
      error,
    );
  }
}

/// @nodoc
const $MovieDetailResultState = _$MovieDetailResultStateTearOff();

/// @nodoc
mixin _$MovieDetailResultState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(Movie movie) result,
    required TResult Function(NetworkError error) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(Movie movie)? result,
    TResult Function(NetworkError error)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(Movie movie)? result,
    TResult Function(NetworkError error)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MovieDetailLoading value) loading,
    required TResult Function(MovieDetailResult value) result,
    required TResult Function(MovieDetailError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(MovieDetailLoading value)? loading,
    TResult Function(MovieDetailResult value)? result,
    TResult Function(MovieDetailError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MovieDetailLoading value)? loading,
    TResult Function(MovieDetailResult value)? result,
    TResult Function(MovieDetailError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MovieDetailResultStateCopyWith<$Res> {
  factory $MovieDetailResultStateCopyWith(MovieDetailResultState value,
          $Res Function(MovieDetailResultState) then) =
      _$MovieDetailResultStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$MovieDetailResultStateCopyWithImpl<$Res>
    implements $MovieDetailResultStateCopyWith<$Res> {
  _$MovieDetailResultStateCopyWithImpl(this._value, this._then);

  final MovieDetailResultState _value;
  // ignore: unused_field
  final $Res Function(MovieDetailResultState) _then;
}

/// @nodoc
abstract class $MovieDetailLoadingCopyWith<$Res> {
  factory $MovieDetailLoadingCopyWith(
          MovieDetailLoading value, $Res Function(MovieDetailLoading) then) =
      _$MovieDetailLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class _$MovieDetailLoadingCopyWithImpl<$Res>
    extends _$MovieDetailResultStateCopyWithImpl<$Res>
    implements $MovieDetailLoadingCopyWith<$Res> {
  _$MovieDetailLoadingCopyWithImpl(
      MovieDetailLoading _value, $Res Function(MovieDetailLoading) _then)
      : super(_value, (v) => _then(v as MovieDetailLoading));

  @override
  MovieDetailLoading get _value => super._value as MovieDetailLoading;
}

/// @nodoc

class _$MovieDetailLoading implements MovieDetailLoading {
  const _$MovieDetailLoading();

  @override
  String toString() {
    return 'MovieDetailResultState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is MovieDetailLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(Movie movie) result,
    required TResult Function(NetworkError error) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(Movie movie)? result,
    TResult Function(NetworkError error)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(Movie movie)? result,
    TResult Function(NetworkError error)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MovieDetailLoading value) loading,
    required TResult Function(MovieDetailResult value) result,
    required TResult Function(MovieDetailError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(MovieDetailLoading value)? loading,
    TResult Function(MovieDetailResult value)? result,
    TResult Function(MovieDetailError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MovieDetailLoading value)? loading,
    TResult Function(MovieDetailResult value)? result,
    TResult Function(MovieDetailError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class MovieDetailLoading implements MovieDetailResultState {
  const factory MovieDetailLoading() = _$MovieDetailLoading;
}

/// @nodoc
abstract class $MovieDetailResultCopyWith<$Res> {
  factory $MovieDetailResultCopyWith(
          MovieDetailResult value, $Res Function(MovieDetailResult) then) =
      _$MovieDetailResultCopyWithImpl<$Res>;
  $Res call({Movie movie});
}

/// @nodoc
class _$MovieDetailResultCopyWithImpl<$Res>
    extends _$MovieDetailResultStateCopyWithImpl<$Res>
    implements $MovieDetailResultCopyWith<$Res> {
  _$MovieDetailResultCopyWithImpl(
      MovieDetailResult _value, $Res Function(MovieDetailResult) _then)
      : super(_value, (v) => _then(v as MovieDetailResult));

  @override
  MovieDetailResult get _value => super._value as MovieDetailResult;

  @override
  $Res call({
    Object? movie = freezed,
  }) {
    return _then(MovieDetailResult(
      movie == freezed
          ? _value.movie
          : movie // ignore: cast_nullable_to_non_nullable
              as Movie,
    ));
  }
}

/// @nodoc

class _$MovieDetailResult implements MovieDetailResult {
  const _$MovieDetailResult(this.movie);

  @override
  final Movie movie;

  @override
  String toString() {
    return 'MovieDetailResultState.result(movie: $movie)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is MovieDetailResult &&
            const DeepCollectionEquality().equals(other.movie, movie));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(movie));

  @JsonKey(ignore: true)
  @override
  $MovieDetailResultCopyWith<MovieDetailResult> get copyWith =>
      _$MovieDetailResultCopyWithImpl<MovieDetailResult>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(Movie movie) result,
    required TResult Function(NetworkError error) error,
  }) {
    return result(movie);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(Movie movie)? result,
    TResult Function(NetworkError error)? error,
  }) {
    return result?.call(movie);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(Movie movie)? result,
    TResult Function(NetworkError error)? error,
    required TResult orElse(),
  }) {
    if (result != null) {
      return result(movie);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MovieDetailLoading value) loading,
    required TResult Function(MovieDetailResult value) result,
    required TResult Function(MovieDetailError value) error,
  }) {
    return result(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(MovieDetailLoading value)? loading,
    TResult Function(MovieDetailResult value)? result,
    TResult Function(MovieDetailError value)? error,
  }) {
    return result?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MovieDetailLoading value)? loading,
    TResult Function(MovieDetailResult value)? result,
    TResult Function(MovieDetailError value)? error,
    required TResult orElse(),
  }) {
    if (result != null) {
      return result(this);
    }
    return orElse();
  }
}

abstract class MovieDetailResult implements MovieDetailResultState {
  const factory MovieDetailResult(Movie movie) = _$MovieDetailResult;

  Movie get movie;
  @JsonKey(ignore: true)
  $MovieDetailResultCopyWith<MovieDetailResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MovieDetailErrorCopyWith<$Res> {
  factory $MovieDetailErrorCopyWith(
          MovieDetailError value, $Res Function(MovieDetailError) then) =
      _$MovieDetailErrorCopyWithImpl<$Res>;
  $Res call({NetworkError error});
}

/// @nodoc
class _$MovieDetailErrorCopyWithImpl<$Res>
    extends _$MovieDetailResultStateCopyWithImpl<$Res>
    implements $MovieDetailErrorCopyWith<$Res> {
  _$MovieDetailErrorCopyWithImpl(
      MovieDetailError _value, $Res Function(MovieDetailError) _then)
      : super(_value, (v) => _then(v as MovieDetailError));

  @override
  MovieDetailError get _value => super._value as MovieDetailError;

  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(MovieDetailError(
      error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as NetworkError,
    ));
  }
}

/// @nodoc

class _$MovieDetailError implements MovieDetailError {
  const _$MovieDetailError(this.error);

  @override
  final NetworkError error;

  @override
  String toString() {
    return 'MovieDetailResultState.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is MovieDetailError &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(error));

  @JsonKey(ignore: true)
  @override
  $MovieDetailErrorCopyWith<MovieDetailError> get copyWith =>
      _$MovieDetailErrorCopyWithImpl<MovieDetailError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(Movie movie) result,
    required TResult Function(NetworkError error) error,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(Movie movie)? result,
    TResult Function(NetworkError error)? error,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(Movie movie)? result,
    TResult Function(NetworkError error)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MovieDetailLoading value) loading,
    required TResult Function(MovieDetailResult value) result,
    required TResult Function(MovieDetailError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(MovieDetailLoading value)? loading,
    TResult Function(MovieDetailResult value)? result,
    TResult Function(MovieDetailError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MovieDetailLoading value)? loading,
    TResult Function(MovieDetailResult value)? result,
    TResult Function(MovieDetailError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class MovieDetailError implements MovieDetailResultState {
  const factory MovieDetailError(NetworkError error) = _$MovieDetailError;

  NetworkError get error;
  @JsonKey(ignore: true)
  $MovieDetailErrorCopyWith<MovieDetailError> get copyWith =>
      throw _privateConstructorUsedError;
}
