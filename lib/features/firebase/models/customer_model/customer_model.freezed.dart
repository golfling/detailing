// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'customer_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CustomerModel _$CustomerModelFromJson(Map<String, dynamic> json) {
  return _LyricsModel.fromJson(json);
}

/// @nodoc
mixin _$CustomerModel {
  String get uid => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String get phone => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get surname => throw _privateConstructorUsedError;
  String get patronymic => throw _privateConstructorUsedError;
  String? get adress => throw _privateConstructorUsedError;
  List<CustomerCar> get cars => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CustomerModelCopyWith<CustomerModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CustomerModelCopyWith<$Res> {
  factory $CustomerModelCopyWith(
          CustomerModel value, $Res Function(CustomerModel) then) =
      _$CustomerModelCopyWithImpl<$Res>;
  $Res call(
      {String uid,
      String email,
      String phone,
      String name,
      String surname,
      String patronymic,
      String? adress,
      List<CustomerCar> cars});
}

/// @nodoc
class _$CustomerModelCopyWithImpl<$Res>
    implements $CustomerModelCopyWith<$Res> {
  _$CustomerModelCopyWithImpl(this._value, this._then);

  final CustomerModel _value;
  // ignore: unused_field
  final $Res Function(CustomerModel) _then;

  @override
  $Res call({
    Object? uid = freezed,
    Object? email = freezed,
    Object? phone = freezed,
    Object? name = freezed,
    Object? surname = freezed,
    Object? patronymic = freezed,
    Object? adress = freezed,
    Object? cars = freezed,
  }) {
    return _then(_value.copyWith(
      uid: uid == freezed
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      phone: phone == freezed
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      surname: surname == freezed
          ? _value.surname
          : surname // ignore: cast_nullable_to_non_nullable
              as String,
      patronymic: patronymic == freezed
          ? _value.patronymic
          : patronymic // ignore: cast_nullable_to_non_nullable
              as String,
      adress: adress == freezed
          ? _value.adress
          : adress // ignore: cast_nullable_to_non_nullable
              as String?,
      cars: cars == freezed
          ? _value.cars
          : cars // ignore: cast_nullable_to_non_nullable
              as List<CustomerCar>,
    ));
  }
}

/// @nodoc
abstract class _$$_LyricsModelCopyWith<$Res>
    implements $CustomerModelCopyWith<$Res> {
  factory _$$_LyricsModelCopyWith(
          _$_LyricsModel value, $Res Function(_$_LyricsModel) then) =
      __$$_LyricsModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {String uid,
      String email,
      String phone,
      String name,
      String surname,
      String patronymic,
      String? adress,
      List<CustomerCar> cars});
}

/// @nodoc
class __$$_LyricsModelCopyWithImpl<$Res>
    extends _$CustomerModelCopyWithImpl<$Res>
    implements _$$_LyricsModelCopyWith<$Res> {
  __$$_LyricsModelCopyWithImpl(
      _$_LyricsModel _value, $Res Function(_$_LyricsModel) _then)
      : super(_value, (v) => _then(v as _$_LyricsModel));

  @override
  _$_LyricsModel get _value => super._value as _$_LyricsModel;

  @override
  $Res call({
    Object? uid = freezed,
    Object? email = freezed,
    Object? phone = freezed,
    Object? name = freezed,
    Object? surname = freezed,
    Object? patronymic = freezed,
    Object? adress = freezed,
    Object? cars = freezed,
  }) {
    return _then(_$_LyricsModel(
      uid: uid == freezed
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      phone: phone == freezed
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      surname: surname == freezed
          ? _value.surname
          : surname // ignore: cast_nullable_to_non_nullable
              as String,
      patronymic: patronymic == freezed
          ? _value.patronymic
          : patronymic // ignore: cast_nullable_to_non_nullable
              as String,
      adress: adress == freezed
          ? _value.adress
          : adress // ignore: cast_nullable_to_non_nullable
              as String?,
      cars: cars == freezed
          ? _value.cars
          : cars // ignore: cast_nullable_to_non_nullable
              as List<CustomerCar>,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_LyricsModel implements _LyricsModel {
  const _$_LyricsModel(
      {required this.uid,
      required this.email,
      required this.phone,
      required this.name,
      required this.surname,
      required this.patronymic,
      this.adress,
      this.cars = const []});

  factory _$_LyricsModel.fromJson(Map<String, dynamic> json) =>
      _$$_LyricsModelFromJson(json);

  @override
  final String uid;
  @override
  final String email;
  @override
  final String phone;
  @override
  final String name;
  @override
  final String surname;
  @override
  final String patronymic;
  @override
  final String? adress;
  @override
  @JsonKey()
  final List<CustomerCar> cars;

  @override
  String toString() {
    return 'CustomerModel(uid: $uid, email: $email, phone: $phone, name: $name, surname: $surname, patronymic: $patronymic, adress: $adress, cars: $cars)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LyricsModel &&
            const DeepCollectionEquality().equals(other.uid, uid) &&
            const DeepCollectionEquality().equals(other.email, email) &&
            const DeepCollectionEquality().equals(other.phone, phone) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.surname, surname) &&
            const DeepCollectionEquality()
                .equals(other.patronymic, patronymic) &&
            const DeepCollectionEquality().equals(other.adress, adress) &&
            const DeepCollectionEquality().equals(other.cars, cars));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(uid),
      const DeepCollectionEquality().hash(email),
      const DeepCollectionEquality().hash(phone),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(surname),
      const DeepCollectionEquality().hash(patronymic),
      const DeepCollectionEquality().hash(adress),
      const DeepCollectionEquality().hash(cars));

  @JsonKey(ignore: true)
  @override
  _$$_LyricsModelCopyWith<_$_LyricsModel> get copyWith =>
      __$$_LyricsModelCopyWithImpl<_$_LyricsModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LyricsModelToJson(this);
  }
}

abstract class _LyricsModel implements CustomerModel {
  const factory _LyricsModel(
      {required final String uid,
      required final String email,
      required final String phone,
      required final String name,
      required final String surname,
      required final String patronymic,
      final String? adress,
      final List<CustomerCar> cars}) = _$_LyricsModel;

  factory _LyricsModel.fromJson(Map<String, dynamic> json) =
      _$_LyricsModel.fromJson;

  @override
  String get uid => throw _privateConstructorUsedError;
  @override
  String get email => throw _privateConstructorUsedError;
  @override
  String get phone => throw _privateConstructorUsedError;
  @override
  String get name => throw _privateConstructorUsedError;
  @override
  String get surname => throw _privateConstructorUsedError;
  @override
  String get patronymic => throw _privateConstructorUsedError;
  @override
  String? get adress => throw _privateConstructorUsedError;
  @override
  List<CustomerCar> get cars => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_LyricsModelCopyWith<_$_LyricsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

CustomerCar _$CustomerCarFromJson(Map<String, dynamic> json) {
  return _CustomerCar.fromJson(json);
}

/// @nodoc
mixin _$CustomerCar {
  String get brand => throw _privateConstructorUsedError;
  String get model => throw _privateConstructorUsedError;
  String get body => throw _privateConstructorUsedError;
  String get licensePlate => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CustomerCarCopyWith<CustomerCar> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CustomerCarCopyWith<$Res> {
  factory $CustomerCarCopyWith(
          CustomerCar value, $Res Function(CustomerCar) then) =
      _$CustomerCarCopyWithImpl<$Res>;
  $Res call({String brand, String model, String body, String licensePlate});
}

/// @nodoc
class _$CustomerCarCopyWithImpl<$Res> implements $CustomerCarCopyWith<$Res> {
  _$CustomerCarCopyWithImpl(this._value, this._then);

  final CustomerCar _value;
  // ignore: unused_field
  final $Res Function(CustomerCar) _then;

  @override
  $Res call({
    Object? brand = freezed,
    Object? model = freezed,
    Object? body = freezed,
    Object? licensePlate = freezed,
  }) {
    return _then(_value.copyWith(
      brand: brand == freezed
          ? _value.brand
          : brand // ignore: cast_nullable_to_non_nullable
              as String,
      model: model == freezed
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as String,
      body: body == freezed
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String,
      licensePlate: licensePlate == freezed
          ? _value.licensePlate
          : licensePlate // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_CustomerCarCopyWith<$Res>
    implements $CustomerCarCopyWith<$Res> {
  factory _$$_CustomerCarCopyWith(
          _$_CustomerCar value, $Res Function(_$_CustomerCar) then) =
      __$$_CustomerCarCopyWithImpl<$Res>;
  @override
  $Res call({String brand, String model, String body, String licensePlate});
}

/// @nodoc
class __$$_CustomerCarCopyWithImpl<$Res> extends _$CustomerCarCopyWithImpl<$Res>
    implements _$$_CustomerCarCopyWith<$Res> {
  __$$_CustomerCarCopyWithImpl(
      _$_CustomerCar _value, $Res Function(_$_CustomerCar) _then)
      : super(_value, (v) => _then(v as _$_CustomerCar));

  @override
  _$_CustomerCar get _value => super._value as _$_CustomerCar;

  @override
  $Res call({
    Object? brand = freezed,
    Object? model = freezed,
    Object? body = freezed,
    Object? licensePlate = freezed,
  }) {
    return _then(_$_CustomerCar(
      brand: brand == freezed
          ? _value.brand
          : brand // ignore: cast_nullable_to_non_nullable
              as String,
      model: model == freezed
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as String,
      body: body == freezed
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String,
      licensePlate: licensePlate == freezed
          ? _value.licensePlate
          : licensePlate // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_CustomerCar implements _CustomerCar {
  const _$_CustomerCar(
      {required this.brand,
      required this.model,
      required this.body,
      required this.licensePlate});

  factory _$_CustomerCar.fromJson(Map<String, dynamic> json) =>
      _$$_CustomerCarFromJson(json);

  @override
  final String brand;
  @override
  final String model;
  @override
  final String body;
  @override
  final String licensePlate;

  @override
  String toString() {
    return 'CustomerCar(brand: $brand, model: $model, body: $body, licensePlate: $licensePlate)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CustomerCar &&
            const DeepCollectionEquality().equals(other.brand, brand) &&
            const DeepCollectionEquality().equals(other.model, model) &&
            const DeepCollectionEquality().equals(other.body, body) &&
            const DeepCollectionEquality()
                .equals(other.licensePlate, licensePlate));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(brand),
      const DeepCollectionEquality().hash(model),
      const DeepCollectionEquality().hash(body),
      const DeepCollectionEquality().hash(licensePlate));

  @JsonKey(ignore: true)
  @override
  _$$_CustomerCarCopyWith<_$_CustomerCar> get copyWith =>
      __$$_CustomerCarCopyWithImpl<_$_CustomerCar>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CustomerCarToJson(this);
  }
}

abstract class _CustomerCar implements CustomerCar {
  const factory _CustomerCar(
      {required final String brand,
      required final String model,
      required final String body,
      required final String licensePlate}) = _$_CustomerCar;

  factory _CustomerCar.fromJson(Map<String, dynamic> json) =
      _$_CustomerCar.fromJson;

  @override
  String get brand => throw _privateConstructorUsedError;
  @override
  String get model => throw _privateConstructorUsedError;
  @override
  String get body => throw _privateConstructorUsedError;
  @override
  String get licensePlate => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_CustomerCarCopyWith<_$_CustomerCar> get copyWith =>
      throw _privateConstructorUsedError;
}
