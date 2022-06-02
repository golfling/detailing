// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'services_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ServicesList _$$_ServicesListFromJson(Map<String, dynamic> json) =>
    _$_ServicesList(
      services: (json['services'] as List<dynamic>)
          .map((e) => ServiceModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_ServicesListToJson(_$_ServicesList instance) =>
    <String, dynamic>{
      'services': instance.services.map((e) => e.toJson()).toList(),
    };

_$_ServiceModel _$$_ServiceModelFromJson(Map<String, dynamic> json) =>
    _$_ServiceModel(
      description: json['description'] as String,
      duration: json['duration'] as int,
      price: json['price'] as int,
      name: json['name'] as String,
    );

Map<String, dynamic> _$$_ServiceModelToJson(_$_ServiceModel instance) =>
    <String, dynamic>{
      'description': instance.description,
      'duration': instance.duration,
      'price': instance.price,
      'name': instance.name,
    };
