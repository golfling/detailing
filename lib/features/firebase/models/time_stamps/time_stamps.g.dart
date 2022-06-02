// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'time_stamps.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TimeStampsModel _$$_TimeStampsModelFromJson(Map<String, dynamic> json) =>
    _$_TimeStampsModel(
      days: (json['days'] as List<dynamic>)
          .map((e) => FreeDays.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_TimeStampsModelToJson(_$_TimeStampsModel instance) =>
    <String, dynamic>{
      'days': instance.days.map((e) => e.toJson()).toList(),
    };

_$_FreeDays _$$_FreeDaysFromJson(Map<String, dynamic> json) => _$_FreeDays(
      day: json['day'] as int,
      freeHours:
          (json['freeHours'] as List<dynamic>).map((e) => e as int).toList(),
    );

Map<String, dynamic> _$$_FreeDaysToJson(_$_FreeDays instance) =>
    <String, dynamic>{
      'day': instance.day,
      'freeHours': instance.freeHours,
    };
