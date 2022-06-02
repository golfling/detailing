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
    required TResult Function(
            CustomerModel customer, ServicesList? servicesList)
        userLoaded,
    required TResult Function() noUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(CustomerModel customer, ServicesList? servicesList)?
        userLoaded,
    TResult Function()? noUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(CustomerModel customer, ServicesList? servicesList)?
        userLoaded,
    TResult Function()? noUser,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FirebaseLoadingState value) loading,
    required TResult Function(_FirebaseUserLoadedState value) userLoaded,
    required TResult Function(_FirebaseNoUserState value) noUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_FirebaseLoadingState value)? loading,
    TResult Function(_FirebaseUserLoadedState value)? userLoaded,
    TResult Function(_FirebaseNoUserState value)? noUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FirebaseLoadingState value)? loading,
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
abstract class _$$_FirebaseLoadingStateCopyWith<$Res> {
  factory _$$_FirebaseLoadingStateCopyWith(_$_FirebaseLoadingState value,
          $Res Function(_$_FirebaseLoadingState) then) =
      __$$_FirebaseLoadingStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_FirebaseLoadingStateCopyWithImpl<$Res>
    extends _$FirebaseStateCopyWithImpl<$Res>
    implements _$$_FirebaseLoadingStateCopyWith<$Res> {
  __$$_FirebaseLoadingStateCopyWithImpl(_$_FirebaseLoadingState _value,
      $Res Function(_$_FirebaseLoadingState) _then)
      : super(_value, (v) => _then(v as _$_FirebaseLoadingState));

  @override
  _$_FirebaseLoadingState get _value => super._value as _$_FirebaseLoadingState;
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
        (other.runtimeType == runtimeType && other is _$_FirebaseLoadingState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(
            CustomerModel customer, ServicesList? servicesList)
        userLoaded,
    required TResult Function() noUser,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(CustomerModel customer, ServicesList? servicesList)?
        userLoaded,
    TResult Function()? noUser,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(CustomerModel customer, ServicesList? servicesList)?
        userLoaded,
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
    required TResult Function(_FirebaseUserLoadedState value) userLoaded,
    required TResult Function(_FirebaseNoUserState value) noUser,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_FirebaseLoadingState value)? loading,
    TResult Function(_FirebaseUserLoadedState value)? userLoaded,
    TResult Function(_FirebaseNoUserState value)? noUser,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FirebaseLoadingState value)? loading,
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
abstract class _$$_FirebaseUserLoadedStateCopyWith<$Res> {
  factory _$$_FirebaseUserLoadedStateCopyWith(_$_FirebaseUserLoadedState value,
          $Res Function(_$_FirebaseUserLoadedState) then) =
      __$$_FirebaseUserLoadedStateCopyWithImpl<$Res>;
  $Res call({CustomerModel customer, ServicesList? servicesList});

  $CustomerModelCopyWith<$Res> get customer;
  $ServicesListCopyWith<$Res>? get servicesList;
}

/// @nodoc
class __$$_FirebaseUserLoadedStateCopyWithImpl<$Res>
    extends _$FirebaseStateCopyWithImpl<$Res>
    implements _$$_FirebaseUserLoadedStateCopyWith<$Res> {
  __$$_FirebaseUserLoadedStateCopyWithImpl(_$_FirebaseUserLoadedState _value,
      $Res Function(_$_FirebaseUserLoadedState) _then)
      : super(_value, (v) => _then(v as _$_FirebaseUserLoadedState));

  @override
  _$_FirebaseUserLoadedState get _value =>
      super._value as _$_FirebaseUserLoadedState;

  @override
  $Res call({
    Object? customer = freezed,
    Object? servicesList = freezed,
  }) {
    return _then(_$_FirebaseUserLoadedState(
      customer: customer == freezed
          ? _value.customer
          : customer // ignore: cast_nullable_to_non_nullable
              as CustomerModel,
      servicesList: servicesList == freezed
          ? _value.servicesList
          : servicesList // ignore: cast_nullable_to_non_nullable
              as ServicesList?,
    ));
  }

  @override
  $CustomerModelCopyWith<$Res> get customer {
    return $CustomerModelCopyWith<$Res>(_value.customer, (value) {
      return _then(_value.copyWith(customer: value));
    });
  }

  @override
  $ServicesListCopyWith<$Res>? get servicesList {
    if (_value.servicesList == null) {
      return null;
    }

    return $ServicesListCopyWith<$Res>(_value.servicesList!, (value) {
      return _then(_value.copyWith(servicesList: value));
    });
  }
}

/// @nodoc

class _$_FirebaseUserLoadedState implements _FirebaseUserLoadedState {
  const _$_FirebaseUserLoadedState({required this.customer, this.servicesList});

  @override
  final CustomerModel customer;
  @override
  final ServicesList? servicesList;

  @override
  String toString() {
    return 'FirebaseState.userLoaded(customer: $customer, servicesList: $servicesList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FirebaseUserLoadedState &&
            const DeepCollectionEquality().equals(other.customer, customer) &&
            const DeepCollectionEquality()
                .equals(other.servicesList, servicesList));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(customer),
      const DeepCollectionEquality().hash(servicesList));

  @JsonKey(ignore: true)
  @override
  _$$_FirebaseUserLoadedStateCopyWith<_$_FirebaseUserLoadedState>
      get copyWith =>
          __$$_FirebaseUserLoadedStateCopyWithImpl<_$_FirebaseUserLoadedState>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(
            CustomerModel customer, ServicesList? servicesList)
        userLoaded,
    required TResult Function() noUser,
  }) {
    return userLoaded(customer, servicesList);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(CustomerModel customer, ServicesList? servicesList)?
        userLoaded,
    TResult Function()? noUser,
  }) {
    return userLoaded?.call(customer, servicesList);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(CustomerModel customer, ServicesList? servicesList)?
        userLoaded,
    TResult Function()? noUser,
    required TResult orElse(),
  }) {
    if (userLoaded != null) {
      return userLoaded(customer, servicesList);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FirebaseLoadingState value) loading,
    required TResult Function(_FirebaseUserLoadedState value) userLoaded,
    required TResult Function(_FirebaseNoUserState value) noUser,
  }) {
    return userLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_FirebaseLoadingState value)? loading,
    TResult Function(_FirebaseUserLoadedState value)? userLoaded,
    TResult Function(_FirebaseNoUserState value)? noUser,
  }) {
    return userLoaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FirebaseLoadingState value)? loading,
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
  const factory _FirebaseUserLoadedState(
      {required final CustomerModel customer,
      final ServicesList? servicesList}) = _$_FirebaseUserLoadedState;

  CustomerModel get customer => throw _privateConstructorUsedError;
  ServicesList? get servicesList => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_FirebaseUserLoadedStateCopyWith<_$_FirebaseUserLoadedState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_FirebaseNoUserStateCopyWith<$Res> {
  factory _$$_FirebaseNoUserStateCopyWith(_$_FirebaseNoUserState value,
          $Res Function(_$_FirebaseNoUserState) then) =
      __$$_FirebaseNoUserStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_FirebaseNoUserStateCopyWithImpl<$Res>
    extends _$FirebaseStateCopyWithImpl<$Res>
    implements _$$_FirebaseNoUserStateCopyWith<$Res> {
  __$$_FirebaseNoUserStateCopyWithImpl(_$_FirebaseNoUserState _value,
      $Res Function(_$_FirebaseNoUserState) _then)
      : super(_value, (v) => _then(v as _$_FirebaseNoUserState));

  @override
  _$_FirebaseNoUserState get _value => super._value as _$_FirebaseNoUserState;
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
        (other.runtimeType == runtimeType && other is _$_FirebaseNoUserState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(
            CustomerModel customer, ServicesList? servicesList)
        userLoaded,
    required TResult Function() noUser,
  }) {
    return noUser();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(CustomerModel customer, ServicesList? servicesList)?
        userLoaded,
    TResult Function()? noUser,
  }) {
    return noUser?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(CustomerModel customer, ServicesList? servicesList)?
        userLoaded,
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
    required TResult Function(_FirebaseUserLoadedState value) userLoaded,
    required TResult Function(_FirebaseNoUserState value) noUser,
  }) {
    return noUser(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_FirebaseLoadingState value)? loading,
    TResult Function(_FirebaseUserLoadedState value)? userLoaded,
    TResult Function(_FirebaseNoUserState value)? noUser,
  }) {
    return noUser?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FirebaseLoadingState value)? loading,
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
