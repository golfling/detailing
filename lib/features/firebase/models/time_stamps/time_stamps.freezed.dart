// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'time_stamps.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TimeStampsModel _$TimeStampsModelFromJson(Map<String, dynamic> json) {
  return _TimeStampsModel.fromJson(json);
}

/// @nodoc
mixin _$TimeStampsModel {
  List<FreeDays> get days => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TimeStampsModelCopyWith<TimeStampsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TimeStampsModelCopyWith<$Res> {
  factory $TimeStampsModelCopyWith(
          TimeStampsModel value, $Res Function(TimeStampsModel) then) =
      _$TimeStampsModelCopyWithImpl<$Res>;
  $Res call({List<FreeDays> days});
}

/// @nodoc
class _$TimeStampsModelCopyWithImpl<$Res>
    implements $TimeStampsModelCopyWith<$Res> {
  _$TimeStampsModelCopyWithImpl(this._value, this._then);

  final TimeStampsModel _value;
  // ignore: unused_field
  final $Res Function(TimeStampsModel) _then;

  @override
  $Res call({
    Object? days = freezed,
  }) {
    return _then(_value.copyWith(
      days: days == freezed
          ? _value.days
          : days // ignore: cast_nullable_to_non_nullable
              as List<FreeDays>,
    ));
  }
}

/// @nodoc
abstract class _$$_TimeStampsModelCopyWith<$Res>
    implements $TimeStampsModelCopyWith<$Res> {
  factory _$$_TimeStampsModelCopyWith(
          _$_TimeStampsModel value, $Res Function(_$_TimeStampsModel) then) =
      __$$_TimeStampsModelCopyWithImpl<$Res>;
  @override
  $Res call({List<FreeDays> days});
}

/// @nodoc
class __$$_TimeStampsModelCopyWithImpl<$Res>
    extends _$TimeStampsModelCopyWithImpl<$Res>
    implements _$$_TimeStampsModelCopyWith<$Res> {
  __$$_TimeStampsModelCopyWithImpl(
      _$_TimeStampsModel _value, $Res Function(_$_TimeStampsModel) _then)
      : super(_value, (v) => _then(v as _$_TimeStampsModel));

  @override
  _$_TimeStampsModel get _value => super._value as _$_TimeStampsModel;

  @override
  $Res call({
    Object? days = freezed,
  }) {
    return _then(_$_TimeStampsModel(
      days: days == freezed
          ? _value._days
          : days // ignore: cast_nullable_to_non_nullable
              as List<FreeDays>,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_TimeStampsModel implements _TimeStampsModel {
  const _$_TimeStampsModel({required final List<FreeDays> days}) : _days = days;

  factory _$_TimeStampsModel.fromJson(Map<String, dynamic> json) =>
      _$$_TimeStampsModelFromJson(json);

  final List<FreeDays> _days;
  @override
  List<FreeDays> get days {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_days);
  }

  @override
  String toString() {
    return 'TimeStampsModel(days: $days)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TimeStampsModel &&
            const DeepCollectionEquality().equals(other._days, _days));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_days));

  @JsonKey(ignore: true)
  @override
  _$$_TimeStampsModelCopyWith<_$_TimeStampsModel> get copyWith =>
      __$$_TimeStampsModelCopyWithImpl<_$_TimeStampsModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TimeStampsModelToJson(this);
  }
}

abstract class _TimeStampsModel implements TimeStampsModel {
  const factory _TimeStampsModel({required final List<FreeDays> days}) =
      _$_TimeStampsModel;

  factory _TimeStampsModel.fromJson(Map<String, dynamic> json) =
      _$_TimeStampsModel.fromJson;

  @override
  List<FreeDays> get days => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_TimeStampsModelCopyWith<_$_TimeStampsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

FreeDays _$FreeDaysFromJson(Map<String, dynamic> json) {
  return _FreeDays.fromJson(json);
}

/// @nodoc
mixin _$FreeDays {
  int get day => throw _privateConstructorUsedError;
  List<int> get freeHours => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FreeDaysCopyWith<FreeDays> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FreeDaysCopyWith<$Res> {
  factory $FreeDaysCopyWith(FreeDays value, $Res Function(FreeDays) then) =
      _$FreeDaysCopyWithImpl<$Res>;
  $Res call({int day, List<int> freeHours});
}

/// @nodoc
class _$FreeDaysCopyWithImpl<$Res> implements $FreeDaysCopyWith<$Res> {
  _$FreeDaysCopyWithImpl(this._value, this._then);

  final FreeDays _value;
  // ignore: unused_field
  final $Res Function(FreeDays) _then;

  @override
  $Res call({
    Object? day = freezed,
    Object? freeHours = freezed,
  }) {
    return _then(_value.copyWith(
      day: day == freezed
          ? _value.day
          : day // ignore: cast_nullable_to_non_nullable
              as int,
      freeHours: freeHours == freezed
          ? _value.freeHours
          : freeHours // ignore: cast_nullable_to_non_nullable
              as List<int>,
    ));
  }
}

/// @nodoc
abstract class _$$_FreeDaysCopyWith<$Res> implements $FreeDaysCopyWith<$Res> {
  factory _$$_FreeDaysCopyWith(
          _$_FreeDays value, $Res Function(_$_FreeDays) then) =
      __$$_FreeDaysCopyWithImpl<$Res>;
  @override
  $Res call({int day, List<int> freeHours});
}

/// @nodoc
class __$$_FreeDaysCopyWithImpl<$Res> extends _$FreeDaysCopyWithImpl<$Res>
    implements _$$_FreeDaysCopyWith<$Res> {
  __$$_FreeDaysCopyWithImpl(
      _$_FreeDays _value, $Res Function(_$_FreeDays) _then)
      : super(_value, (v) => _then(v as _$_FreeDays));

  @override
  _$_FreeDays get _value => super._value as _$_FreeDays;

  @override
  $Res call({
    Object? day = freezed,
    Object? freeHours = freezed,
  }) {
    return _then(_$_FreeDays(
      day: day == freezed
          ? _value.day
          : day // ignore: cast_nullable_to_non_nullable
              as int,
      freeHours: freeHours == freezed
          ? _value._freeHours
          : freeHours // ignore: cast_nullable_to_non_nullable
              as List<int>,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_FreeDays implements _FreeDays {
  const _$_FreeDays({required this.day, required final List<int> freeHours})
      : _freeHours = freeHours;

  factory _$_FreeDays.fromJson(Map<String, dynamic> json) =>
      _$$_FreeDaysFromJson(json);

  @override
  final int day;
  final List<int> _freeHours;
  @override
  List<int> get freeHours {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_freeHours);
  }

  @override
  String toString() {
    return 'FreeDays(day: $day, freeHours: $freeHours)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FreeDays &&
            const DeepCollectionEquality().equals(other.day, day) &&
            const DeepCollectionEquality()
                .equals(other._freeHours, _freeHours));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(day),
      const DeepCollectionEquality().hash(_freeHours));

  @JsonKey(ignore: true)
  @override
  _$$_FreeDaysCopyWith<_$_FreeDays> get copyWith =>
      __$$_FreeDaysCopyWithImpl<_$_FreeDays>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_FreeDaysToJson(this);
  }
}

abstract class _FreeDays implements FreeDays {
  const factory _FreeDays(
      {required final int day,
      required final List<int> freeHours}) = _$_FreeDays;

  factory _FreeDays.fromJson(Map<String, dynamic> json) = _$_FreeDays.fromJson;

  @override
  int get day => throw _privateConstructorUsedError;
  @override
  List<int> get freeHours => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_FreeDaysCopyWith<_$_FreeDays> get copyWith =>
      throw _privateConstructorUsedError;
}
