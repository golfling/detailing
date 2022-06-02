// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'services_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ServicesList _$ServicesListFromJson(Map<String, dynamic> json) {
  return _ServicesList.fromJson(json);
}

/// @nodoc
mixin _$ServicesList {
  List<ServiceModel> get services => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ServicesListCopyWith<ServicesList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ServicesListCopyWith<$Res> {
  factory $ServicesListCopyWith(
          ServicesList value, $Res Function(ServicesList) then) =
      _$ServicesListCopyWithImpl<$Res>;
  $Res call({List<ServiceModel> services});
}

/// @nodoc
class _$ServicesListCopyWithImpl<$Res> implements $ServicesListCopyWith<$Res> {
  _$ServicesListCopyWithImpl(this._value, this._then);

  final ServicesList _value;
  // ignore: unused_field
  final $Res Function(ServicesList) _then;

  @override
  $Res call({
    Object? services = freezed,
  }) {
    return _then(_value.copyWith(
      services: services == freezed
          ? _value.services
          : services // ignore: cast_nullable_to_non_nullable
              as List<ServiceModel>,
    ));
  }
}

/// @nodoc
abstract class _$$_ServicesListCopyWith<$Res>
    implements $ServicesListCopyWith<$Res> {
  factory _$$_ServicesListCopyWith(
          _$_ServicesList value, $Res Function(_$_ServicesList) then) =
      __$$_ServicesListCopyWithImpl<$Res>;
  @override
  $Res call({List<ServiceModel> services});
}

/// @nodoc
class __$$_ServicesListCopyWithImpl<$Res>
    extends _$ServicesListCopyWithImpl<$Res>
    implements _$$_ServicesListCopyWith<$Res> {
  __$$_ServicesListCopyWithImpl(
      _$_ServicesList _value, $Res Function(_$_ServicesList) _then)
      : super(_value, (v) => _then(v as _$_ServicesList));

  @override
  _$_ServicesList get _value => super._value as _$_ServicesList;

  @override
  $Res call({
    Object? services = freezed,
  }) {
    return _then(_$_ServicesList(
      services: services == freezed
          ? _value._services
          : services // ignore: cast_nullable_to_non_nullable
              as List<ServiceModel>,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_ServicesList implements _ServicesList {
  const _$_ServicesList({required final List<ServiceModel> services})
      : _services = services;

  factory _$_ServicesList.fromJson(Map<String, dynamic> json) =>
      _$$_ServicesListFromJson(json);

  final List<ServiceModel> _services;
  @override
  List<ServiceModel> get services {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_services);
  }

  @override
  String toString() {
    return 'ServicesList(services: $services)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ServicesList &&
            const DeepCollectionEquality().equals(other._services, _services));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_services));

  @JsonKey(ignore: true)
  @override
  _$$_ServicesListCopyWith<_$_ServicesList> get copyWith =>
      __$$_ServicesListCopyWithImpl<_$_ServicesList>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ServicesListToJson(this);
  }
}

abstract class _ServicesList implements ServicesList {
  const factory _ServicesList({required final List<ServiceModel> services}) =
      _$_ServicesList;

  factory _ServicesList.fromJson(Map<String, dynamic> json) =
      _$_ServicesList.fromJson;

  @override
  List<ServiceModel> get services => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_ServicesListCopyWith<_$_ServicesList> get copyWith =>
      throw _privateConstructorUsedError;
}

ServiceModel _$ServiceModelFromJson(Map<String, dynamic> json) {
  return _ServiceModel.fromJson(json);
}

/// @nodoc
mixin _$ServiceModel {
  String get description => throw _privateConstructorUsedError;
  int get duration => throw _privateConstructorUsedError;
  int get price => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ServiceModelCopyWith<ServiceModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ServiceModelCopyWith<$Res> {
  factory $ServiceModelCopyWith(
          ServiceModel value, $Res Function(ServiceModel) then) =
      _$ServiceModelCopyWithImpl<$Res>;
  $Res call({String description, int duration, int price, String name});
}

/// @nodoc
class _$ServiceModelCopyWithImpl<$Res> implements $ServiceModelCopyWith<$Res> {
  _$ServiceModelCopyWithImpl(this._value, this._then);

  final ServiceModel _value;
  // ignore: unused_field
  final $Res Function(ServiceModel) _then;

  @override
  $Res call({
    Object? description = freezed,
    Object? duration = freezed,
    Object? price = freezed,
    Object? name = freezed,
  }) {
    return _then(_value.copyWith(
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      duration: duration == freezed
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as int,
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_ServiceModelCopyWith<$Res>
    implements $ServiceModelCopyWith<$Res> {
  factory _$$_ServiceModelCopyWith(
          _$_ServiceModel value, $Res Function(_$_ServiceModel) then) =
      __$$_ServiceModelCopyWithImpl<$Res>;
  @override
  $Res call({String description, int duration, int price, String name});
}

/// @nodoc
class __$$_ServiceModelCopyWithImpl<$Res>
    extends _$ServiceModelCopyWithImpl<$Res>
    implements _$$_ServiceModelCopyWith<$Res> {
  __$$_ServiceModelCopyWithImpl(
      _$_ServiceModel _value, $Res Function(_$_ServiceModel) _then)
      : super(_value, (v) => _then(v as _$_ServiceModel));

  @override
  _$_ServiceModel get _value => super._value as _$_ServiceModel;

  @override
  $Res call({
    Object? description = freezed,
    Object? duration = freezed,
    Object? price = freezed,
    Object? name = freezed,
  }) {
    return _then(_$_ServiceModel(
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      duration: duration == freezed
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as int,
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_ServiceModel implements _ServiceModel {
  const _$_ServiceModel(
      {required this.description,
      required this.duration,
      required this.price,
      required this.name});

  factory _$_ServiceModel.fromJson(Map<String, dynamic> json) =>
      _$$_ServiceModelFromJson(json);

  @override
  final String description;
  @override
  final int duration;
  @override
  final int price;
  @override
  final String name;

  @override
  String toString() {
    return 'ServiceModel(description: $description, duration: $duration, price: $price, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ServiceModel &&
            const DeepCollectionEquality()
                .equals(other.description, description) &&
            const DeepCollectionEquality().equals(other.duration, duration) &&
            const DeepCollectionEquality().equals(other.price, price) &&
            const DeepCollectionEquality().equals(other.name, name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(description),
      const DeepCollectionEquality().hash(duration),
      const DeepCollectionEquality().hash(price),
      const DeepCollectionEquality().hash(name));

  @JsonKey(ignore: true)
  @override
  _$$_ServiceModelCopyWith<_$_ServiceModel> get copyWith =>
      __$$_ServiceModelCopyWithImpl<_$_ServiceModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ServiceModelToJson(this);
  }
}

abstract class _ServiceModel implements ServiceModel {
  const factory _ServiceModel(
      {required final String description,
      required final int duration,
      required final int price,
      required final String name}) = _$_ServiceModel;

  factory _ServiceModel.fromJson(Map<String, dynamic> json) =
      _$_ServiceModel.fromJson;

  @override
  String get description => throw _privateConstructorUsedError;
  @override
  int get duration => throw _privateConstructorUsedError;
  @override
  int get price => throw _privateConstructorUsedError;
  @override
  String get name => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_ServiceModelCopyWith<_$_ServiceModel> get copyWith =>
      throw _privateConstructorUsedError;
}
