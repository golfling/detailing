// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'firebase_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$FirebaseState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() error,
    required TResult Function() userLoaded,
    required TResult Function() noUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? error,
    TResult Function()? userLoaded,
    TResult Function()? noUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? error,
    TResult Function()? userLoaded,
    TResult Function()? noUser,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FirebaseLoadingState value) loading,
    required TResult Function(_FirebaseErrorState value) error,
    required TResult Function(_FirebaseUserLoadedState value) userLoaded,
    required TResult Function(_FirebaseNoUserState value) noUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_FirebaseLoadingState value)? loading,
    TResult Function(_FirebaseErrorState value)? error,
    TResult Function(_FirebaseUserLoadedState value)? userLoaded,
    TResult Function(_FirebaseNoUserState value)? noUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FirebaseLoadingState value)? loading,
    TResult Function(_FirebaseErrorState value)? error,
    TResult Function(_FirebaseUserLoadedState value)? userLoaded,
    TResult Function(_FirebaseNoUserState value)? noUser,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FirebaseStateCopyWith<$Res> {
  factory $FirebaseStateCopyWith(
          FirebaseState value, $Res Function(FirebaseState) then) =
      _$FirebaseStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$FirebaseStateCopyWithImpl<$Res>
    implements $FirebaseStateCopyWith<$Res> {
  _$FirebaseStateCopyWithImpl(this._value, this._then);

  final FirebaseState _value;
  // ignore: unused_field
  final $Res Function(FirebaseState) _then;
}

/// @nodoc
abstract class _$FirebaseLoadingStateCopyWith<$Res> {
  factory _$FirebaseLoadingStateCopyWith(_FirebaseLoadingState value,
          $Res Function(_FirebaseLoadingState) then) =
      __$FirebaseLoadingStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$FirebaseLoadingStateCopyWithImpl<$Res>
    extends _$FirebaseStateCopyWithImpl<$Res>
    implements _$FirebaseLoadingStateCopyWith<$Res> {
  __$FirebaseLoadingStateCopyWithImpl(
      _FirebaseLoadingState _value, $Res Function(_FirebaseLoadingState) _then)
      : super(_value, (v) => _then(v as _FirebaseLoadingState));

  @override
  _FirebaseLoadingState get _value => super._value as _FirebaseLoadingState;
}

/// @nodoc

class _$_FirebaseLoadingState implements _FirebaseLoadingState {
  const _$_FirebaseLoadingState();

  @override
  String toString() {
    return 'FirebaseState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _FirebaseLoadingState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() error,
    required TResult Function() userLoaded,
    required TResult Function() noUser,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? error,
    TResult Function()? userLoaded,
    TResult Function()? noUser,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? error,
    TResult Function()? userLoaded,
    TResult Function()? noUser,
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
    required TResult Function(_FirebaseLoadingState value) loading,
    required TResult Function(_FirebaseErrorState value) error,
    required TResult Function(_FirebaseUserLoadedState value) userLoaded,
    required TResult Function(_FirebaseNoUserState value) noUser,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_FirebaseLoadingState value)? loading,
    TResult Function(_FirebaseErrorState value)? error,
    TResult Function(_FirebaseUserLoadedState value)? userLoaded,
    TResult Function(_FirebaseNoUserState value)? noUser,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FirebaseLoadingState value)? loading,
    TResult Function(_FirebaseErrorState value)? error,
    TResult Function(_FirebaseUserLoadedState value)? userLoaded,
    TResult Function(_FirebaseNoUserState value)? noUser,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _FirebaseLoadingState implements FirebaseState {
  const factory _FirebaseLoadingState() = _$_FirebaseLoadingState;
}

/// @nodoc
abstract class _$FirebaseErrorStateCopyWith<$Res> {
  factory _$FirebaseErrorStateCopyWith(
          _FirebaseErrorState value, $Res Function(_FirebaseErrorState) then) =
      __$FirebaseErrorStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$FirebaseErrorStateCopyWithImpl<$Res>
    extends _$FirebaseStateCopyWithImpl<$Res>
    implements _$FirebaseErrorStateCopyWith<$Res> {
  __$FirebaseErrorStateCopyWithImpl(
      _FirebaseErrorState _value, $Res Function(_FirebaseErrorState) _then)
      : super(_value, (v) => _then(v as _FirebaseErrorState));

  @override
  _FirebaseErrorState get _value => super._value as _FirebaseErrorState;
}

/// @nodoc

class _$_FirebaseErrorState implements _FirebaseErrorState {
  const _$_FirebaseErrorState();

  @override
  String toString() {
    return 'FirebaseState.error()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _FirebaseErrorState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() error,
    required TResult Function() userLoaded,
    required TResult Function() noUser,
  }) {
    return error();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? error,
    TResult Function()? userLoaded,
    TResult Function()? noUser,
  }) {
    return error?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? error,
    TResult Function()? userLoaded,
    TResult Function()? noUser,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FirebaseLoadingState value) loading,
    required TResult Function(_FirebaseErrorState value) error,
    required TResult Function(_FirebaseUserLoadedState value) userLoaded,
    required TResult Function(_FirebaseNoUserState value) noUser,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_FirebaseLoadingState value)? loading,
    TResult Function(_FirebaseErrorState value)? error,
    TResult Function(_FirebaseUserLoadedState value)? userLoaded,
    TResult Function(_FirebaseNoUserState value)? noUser,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FirebaseLoadingState value)? loading,
    TResult Function(_FirebaseErrorState value)? error,
    TResult Function(_FirebaseUserLoadedState value)? userLoaded,
    TResult Function(_FirebaseNoUserState value)? noUser,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _FirebaseErrorState implements FirebaseState {
  const factory _FirebaseErrorState() = _$_FirebaseErrorState;
}

/// @nodoc
abstract class _$FirebaseUserLoadedStateCopyWith<$Res> {
  factory _$FirebaseUserLoadedStateCopyWith(_FirebaseUserLoadedState value,
          $Res Function(_FirebaseUserLoadedState) then) =
      __$FirebaseUserLoadedStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$FirebaseUserLoadedStateCopyWithImpl<$Res>
    extends _$FirebaseStateCopyWithImpl<$Res>
    implements _$FirebaseUserLoadedStateCopyWith<$Res> {
  __$FirebaseUserLoadedStateCopyWithImpl(_FirebaseUserLoadedState _value,
      $Res Function(_FirebaseUserLoadedState) _then)
      : super(_value, (v) => _then(v as _FirebaseUserLoadedState));

  @override
  _FirebaseUserLoadedState get _value =>
      super._value as _FirebaseUserLoadedState;
}

/// @nodoc

class _$_FirebaseUserLoadedState implements _FirebaseUserLoadedState {
  const _$_FirebaseUserLoadedState();

  @override
  String toString() {
    return 'FirebaseState.userLoaded()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _FirebaseUserLoadedState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() error,
    required TResult Function() userLoaded,
    required TResult Function() noUser,
  }) {
    return userLoaded();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? error,
    TResult Function()? userLoaded,
    TResult Function()? noUser,
  }) {
    return userLoaded?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? error,
    TResult Function()? userLoaded,
    TResult Function()? noUser,
    required TResult orElse(),
  }) {
    if (userLoaded != null) {
      return userLoaded();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FirebaseLoadingState value) loading,
    required TResult Function(_FirebaseErrorState value) error,
    required TResult Function(_FirebaseUserLoadedState value) userLoaded,
    required TResult Function(_FirebaseNoUserState value) noUser,
  }) {
    return userLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_FirebaseLoadingState value)? loading,
    TResult Function(_FirebaseErrorState value)? error,
    TResult Function(_FirebaseUserLoadedState value)? userLoaded,
    TResult Function(_FirebaseNoUserState value)? noUser,
  }) {
    return userLoaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FirebaseLoadingState value)? loading,
    TResult Function(_FirebaseErrorState value)? error,
    TResult Function(_FirebaseUserLoadedState value)? userLoaded,
    TResult Function(_FirebaseNoUserState value)? noUser,
    required TResult orElse(),
  }) {
    if (userLoaded != null) {
      return userLoaded(this);
    }
    return orElse();
  }
}

abstract class _FirebaseUserLoadedState implements FirebaseState {
  const factory _FirebaseUserLoadedState() = _$_FirebaseUserLoadedState;
}

/// @nodoc
abstract class _$FirebaseNoUserStateCopyWith<$Res> {
  factory _$FirebaseNoUserStateCopyWith(_FirebaseNoUserState value,
          $Res Function(_FirebaseNoUserState) then) =
      __$FirebaseNoUserStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$FirebaseNoUserStateCopyWithImpl<$Res>
    extends _$FirebaseStateCopyWithImpl<$Res>
    implements _$FirebaseNoUserStateCopyWith<$Res> {
  __$FirebaseNoUserStateCopyWithImpl(
      _FirebaseNoUserState _value, $Res Function(_FirebaseNoUserState) _then)
      : super(_value, (v) => _then(v as _FirebaseNoUserState));

  @override
  _FirebaseNoUserState get _value => super._value as _FirebaseNoUserState;
}

/// @nodoc

class _$_FirebaseNoUserState implements _FirebaseNoUserState {
  const _$_FirebaseNoUserState();

  @override
  String toString() {
    return 'FirebaseState.noUser()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _FirebaseNoUserState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() error,
    required TResult Function() userLoaded,
    required TResult Function() noUser,
  }) {
    return noUser();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? error,
    TResult Function()? userLoaded,
    TResult Function()? noUser,
  }) {
    return noUser?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? error,
    TResult Function()? userLoaded,
    TResult Function()? noUser,
    required TResult orElse(),
  }) {
    if (noUser != null) {
      return noUser();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FirebaseLoadingState value) loading,
    required TResult Function(_FirebaseErrorState value) error,
    required TResult Function(_FirebaseUserLoadedState value) userLoaded,
    required TResult Function(_FirebaseNoUserState value) noUser,
  }) {
    return noUser(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_FirebaseLoadingState value)? loading,
    TResult Function(_FirebaseErrorState value)? error,
    TResult Function(_FirebaseUserLoadedState value)? userLoaded,
    TResult Function(_FirebaseNoUserState value)? noUser,
  }) {
    return noUser?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FirebaseLoadingState value)? loading,
    TResult Function(_FirebaseErrorState value)? error,
    TResult Function(_FirebaseUserLoadedState value)? userLoaded,
    TResult Function(_FirebaseNoUserState value)? noUser,
    required TResult orElse(),
  }) {
    if (noUser != null) {
      return noUser(this);
    }
    return orElse();
  }
}

abstract class _FirebaseNoUserState implements FirebaseState {
  const factory _FirebaseNoUserState() = _$_FirebaseNoUserState;
}
