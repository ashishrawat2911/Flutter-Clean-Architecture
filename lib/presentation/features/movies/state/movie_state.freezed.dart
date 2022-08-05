// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'movie_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$MoviesStateTearOff {
  const _$MoviesStateTearOff();

  _MoviesState call({MoviesResultState moviesResultState = const MoviesResultState.loading()}) {
    return _MoviesState(
      moviesResultState: moviesResultState,
    );
  }
}

/// @nodoc
const $MoviesState = _$MoviesStateTearOff();

/// @nodoc
mixin _$MoviesState {
  MoviesResultState get moviesResultState => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MoviesStateCopyWith<MoviesState> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MoviesStateCopyWith<$Res> {
  factory $MoviesStateCopyWith(MoviesState value, $Res Function(MoviesState) then) = _$MoviesStateCopyWithImpl<$Res>;
  $Res call({MoviesResultState moviesResultState});

  $MoviesResultStateCopyWith<$Res> get moviesResultState;
}

/// @nodoc
class _$MoviesStateCopyWithImpl<$Res> implements $MoviesStateCopyWith<$Res> {
  _$MoviesStateCopyWithImpl(this._value, this._then);

  final MoviesState _value;
  // ignore: unused_field
  final $Res Function(MoviesState) _then;

  @override
  $Res call({
    Object? moviesResultState = freezed,
  }) {
    return _then(_value.copyWith(
      moviesResultState: moviesResultState == freezed
          ? _value.moviesResultState
          : moviesResultState // ignore: cast_nullable_to_non_nullable
              as MoviesResultState,
    ));
  }

  @override
  $MoviesResultStateCopyWith<$Res> get moviesResultState {
    return $MoviesResultStateCopyWith<$Res>(_value.moviesResultState, (value) {
      return _then(_value.copyWith(moviesResultState: value));
    });
  }
}

/// @nodoc
abstract class _$MoviesStateCopyWith<$Res> implements $MoviesStateCopyWith<$Res> {
  factory _$MoviesStateCopyWith(_MoviesState value, $Res Function(_MoviesState) then) =
      __$MoviesStateCopyWithImpl<$Res>;
  @override
  $Res call({MoviesResultState moviesResultState});

  @override
  $MoviesResultStateCopyWith<$Res> get moviesResultState;
}

/// @nodoc
class __$MoviesStateCopyWithImpl<$Res> extends _$MoviesStateCopyWithImpl<$Res> implements _$MoviesStateCopyWith<$Res> {
  __$MoviesStateCopyWithImpl(_MoviesState _value, $Res Function(_MoviesState) _then)
      : super(_value, (v) => _then(v as _MoviesState));

  @override
  _MoviesState get _value => super._value as _MoviesState;

  @override
  $Res call({
    Object? moviesResultState = freezed,
  }) {
    return _then(_MoviesState(
      moviesResultState: moviesResultState == freezed
          ? _value.moviesResultState
          : moviesResultState // ignore: cast_nullable_to_non_nullable
              as MoviesResultState,
    ));
  }
}

/// @nodoc

class _$_MoviesState implements _MoviesState {
  const _$_MoviesState({this.moviesResultState = const MoviesResultState.loading()});

  @JsonKey()
  @override
  final MoviesResultState moviesResultState;

  @override
  String toString() {
    return 'MoviesState(moviesResultState: $moviesResultState)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _MoviesState &&
            const DeepCollectionEquality().equals(other.moviesResultState, moviesResultState));
  }

  @override
  int get hashCode => Object.hash(runtimeType, const DeepCollectionEquality().hash(moviesResultState));

  @JsonKey(ignore: true)
  @override
  _$MoviesStateCopyWith<_MoviesState> get copyWith => __$MoviesStateCopyWithImpl<_MoviesState>(this, _$identity);
}

abstract class _MoviesState implements MoviesState {
  const factory _MoviesState({MoviesResultState moviesResultState}) = _$_MoviesState;

  @override
  MoviesResultState get moviesResultState;
  @override
  @JsonKey(ignore: true)
  _$MoviesStateCopyWith<_MoviesState> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
class _$MoviesResultStateTearOff {
  const _$MoviesResultStateTearOff();

  MoviesLoading loading() {
    return const MoviesLoading();
  }

  MoviesResult result(List<Movie> movies) {
    return MoviesResult(
      movies,
    );
  }

  MoviesError error(NetworkError error) {
    return MoviesError(
      error,
    );
  }
}

/// @nodoc
const $MoviesResultState = _$MoviesResultStateTearOff();

/// @nodoc
mixin _$MoviesResultState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<Movie> movies) result,
    required TResult Function(NetworkError error) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Movie> movies)? result,
    TResult Function(NetworkError error)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Movie> movies)? result,
    TResult Function(NetworkError error)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MoviesLoading value) loading,
    required TResult Function(MoviesResult value) result,
    required TResult Function(MoviesError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(MoviesLoading value)? loading,
    TResult Function(MoviesResult value)? result,
    TResult Function(MoviesError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MoviesLoading value)? loading,
    TResult Function(MoviesResult value)? result,
    TResult Function(MoviesError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MoviesResultStateCopyWith<$Res> {
  factory $MoviesResultStateCopyWith(MoviesResultState value, $Res Function(MoviesResultState) then) =
      _$MoviesResultStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$MoviesResultStateCopyWithImpl<$Res> implements $MoviesResultStateCopyWith<$Res> {
  _$MoviesResultStateCopyWithImpl(this._value, this._then);

  final MoviesResultState _value;
  // ignore: unused_field
  final $Res Function(MoviesResultState) _then;
}

/// @nodoc
abstract class $MoviesLoadingCopyWith<$Res> {
  factory $MoviesLoadingCopyWith(MoviesLoading value, $Res Function(MoviesLoading) then) =
      _$MoviesLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class _$MoviesLoadingCopyWithImpl<$Res> extends _$MoviesResultStateCopyWithImpl<$Res>
    implements $MoviesLoadingCopyWith<$Res> {
  _$MoviesLoadingCopyWithImpl(MoviesLoading _value, $Res Function(MoviesLoading) _then)
      : super(_value, (v) => _then(v as MoviesLoading));

  @override
  MoviesLoading get _value => super._value as MoviesLoading;
}

/// @nodoc

class _$MoviesLoading implements MoviesLoading {
  const _$MoviesLoading();

  @override
  String toString() {
    return 'MoviesResultState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other.runtimeType == runtimeType && other is MoviesLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<Movie> movies) result,
    required TResult Function(NetworkError error) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Movie> movies)? result,
    TResult Function(NetworkError error)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Movie> movies)? result,
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
    required TResult Function(MoviesLoading value) loading,
    required TResult Function(MoviesResult value) result,
    required TResult Function(MoviesError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(MoviesLoading value)? loading,
    TResult Function(MoviesResult value)? result,
    TResult Function(MoviesError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MoviesLoading value)? loading,
    TResult Function(MoviesResult value)? result,
    TResult Function(MoviesError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class MoviesLoading implements MoviesResultState {
  const factory MoviesLoading() = _$MoviesLoading;
}

/// @nodoc
abstract class $MoviesResultCopyWith<$Res> {
  factory $MoviesResultCopyWith(MoviesResult value, $Res Function(MoviesResult) then) =
      _$MoviesResultCopyWithImpl<$Res>;
  $Res call({List<Movie> movies});
}

/// @nodoc
class _$MoviesResultCopyWithImpl<$Res> extends _$MoviesResultStateCopyWithImpl<$Res>
    implements $MoviesResultCopyWith<$Res> {
  _$MoviesResultCopyWithImpl(MoviesResult _value, $Res Function(MoviesResult) _then)
      : super(_value, (v) => _then(v as MoviesResult));

  @override
  MoviesResult get _value => super._value as MoviesResult;

  @override
  $Res call({
    Object? movies = freezed,
  }) {
    return _then(MoviesResult(
      movies == freezed
          ? _value.movies
          : movies // ignore: cast_nullable_to_non_nullable
              as List<Movie>,
    ));
  }
}

/// @nodoc

class _$MoviesResult implements MoviesResult {
  const _$MoviesResult(this.movies);

  @override
  final List<Movie> movies;

  @override
  String toString() {
    return 'MoviesResultState.result(movies: $movies)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is MoviesResult &&
            const DeepCollectionEquality().equals(other.movies, movies));
  }

  @override
  int get hashCode => Object.hash(runtimeType, const DeepCollectionEquality().hash(movies));

  @JsonKey(ignore: true)
  @override
  $MoviesResultCopyWith<MoviesResult> get copyWith => _$MoviesResultCopyWithImpl<MoviesResult>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<Movie> movies) result,
    required TResult Function(NetworkError error) error,
  }) {
    return result(movies);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Movie> movies)? result,
    TResult Function(NetworkError error)? error,
  }) {
    return result?.call(movies);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Movie> movies)? result,
    TResult Function(NetworkError error)? error,
    required TResult orElse(),
  }) {
    if (result != null) {
      return result(movies);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MoviesLoading value) loading,
    required TResult Function(MoviesResult value) result,
    required TResult Function(MoviesError value) error,
  }) {
    return result(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(MoviesLoading value)? loading,
    TResult Function(MoviesResult value)? result,
    TResult Function(MoviesError value)? error,
  }) {
    return result?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MoviesLoading value)? loading,
    TResult Function(MoviesResult value)? result,
    TResult Function(MoviesError value)? error,
    required TResult orElse(),
  }) {
    if (result != null) {
      return result(this);
    }
    return orElse();
  }
}

abstract class MoviesResult implements MoviesResultState {
  const factory MoviesResult(List<Movie> movies) = _$MoviesResult;

  List<Movie> get movies;
  @JsonKey(ignore: true)
  $MoviesResultCopyWith<MoviesResult> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MoviesErrorCopyWith<$Res> {
  factory $MoviesErrorCopyWith(MoviesError value, $Res Function(MoviesError) then) = _$MoviesErrorCopyWithImpl<$Res>;
  $Res call({NetworkError error});
}

/// @nodoc
class _$MoviesErrorCopyWithImpl<$Res> extends _$MoviesResultStateCopyWithImpl<$Res>
    implements $MoviesErrorCopyWith<$Res> {
  _$MoviesErrorCopyWithImpl(MoviesError _value, $Res Function(MoviesError) _then)
      : super(_value, (v) => _then(v as MoviesError));

  @override
  MoviesError get _value => super._value as MoviesError;

  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(MoviesError(
      error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as NetworkError,
    ));
  }
}

/// @nodoc

class _$MoviesError implements MoviesError {
  const _$MoviesError(this.error);

  @override
  final NetworkError error;

  @override
  String toString() {
    return 'MoviesResultState.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is MoviesError &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, const DeepCollectionEquality().hash(error));

  @JsonKey(ignore: true)
  @override
  $MoviesErrorCopyWith<MoviesError> get copyWith => _$MoviesErrorCopyWithImpl<MoviesError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<Movie> movies) result,
    required TResult Function(NetworkError error) error,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Movie> movies)? result,
    TResult Function(NetworkError error)? error,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Movie> movies)? result,
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
    required TResult Function(MoviesLoading value) loading,
    required TResult Function(MoviesResult value) result,
    required TResult Function(MoviesError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(MoviesLoading value)? loading,
    TResult Function(MoviesResult value)? result,
    TResult Function(MoviesError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MoviesLoading value)? loading,
    TResult Function(MoviesResult value)? result,
    TResult Function(MoviesError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class MoviesError implements MoviesResultState {
  const factory MoviesError(NetworkError error) = _$MoviesError;

  NetworkError get error;
  @JsonKey(ignore: true)
  $MoviesErrorCopyWith<MoviesError> get copyWith => throw _privateConstructorUsedError;
}
