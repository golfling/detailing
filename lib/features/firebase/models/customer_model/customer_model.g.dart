// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'customer_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_LyricsModel _$$_LyricsModelFromJson(Map<String, dynamic> json) =>
    _$_LyricsModel(
      uid: json['uid'] as String,
      email: json['email'] as String,
      phone: json['phone'] as String,
      name: json['name'] as String,
      surname: json['surname'] as String,
      patronymic: json['patronymic'] as String,
      adress: json['adress'] as String?,
      cars: (json['cars'] as List<dynamic>?)
              ?.map((e) => CustomerCar.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$_LyricsModelToJson(_$_LyricsModel instance) =>
    <String, dynamic>{
      'uid': instance.uid,
      'email': instance.email,
      'phone': instance.phone,
      'name': instance.name,
      'surname': instance.surname,
      'patronymic': instance.patronymic,
      'adress': instance.adress,
      'cars': instance.cars.map((e) => e.toJson()).toList(),
    };

_$_CustomerCar _$$_CustomerCarFromJson(Map<String, dynamic> json) =>
    _$_CustomerCar(
      brand: json['brand'] as String,
      model: json['model'] as String,
      body: json['body'] as String,
      licensePlate: json['licensePlate'] as String,
    );

Map<String, dynamic> _$$_CustomerCarToJson(_$_CustomerCar instance) =>
    <String, dynamic>{
      'brand': instance.brand,
      'model': instance.model,
      'body': instance.body,
      'licensePlate': instance.licensePlate,
    };
