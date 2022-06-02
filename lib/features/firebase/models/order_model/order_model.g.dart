// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_OrderModel _$$_OrderModelFromJson(Map<String, dynamic> json) =>
    _$_OrderModel(
      customer: Customer.fromJson(json['customer'] as Map<String, dynamic>),
      car: Car.fromJson(json['car'] as Map<String, dynamic>),
      services: (json['services'] as List<dynamic>)
          .map((e) => Service.fromJson(e as Map<String, dynamic>))
          .toList(),
      recordingDate: DateTime.parse(json['recordingDate'] as String),
      date: DateTime.parse(json['date'] as String),
      fullCost: json['fullCost'] as int,
      duration: json['duration'] as int,
    );

Map<String, dynamic> _$$_OrderModelToJson(_$_OrderModel instance) =>
    <String, dynamic>{
      'customer': instance.customer.toJson(),
      'car': instance.car.toJson(),
      'services': instance.services.map((e) => e.toJson()).toList(),
      'recordingDate': instance.recordingDate.toIso8601String(),
      'date': instance.date.toIso8601String(),
      'fullCost': instance.fullCost,
      'duration': instance.duration,
    };

_$_Customer _$$_CustomerFromJson(Map<String, dynamic> json) => _$_Customer(
      uid: json['uid'] as String,
      email: json['email'] as String,
      phone: json['phone'] as String,
      name: json['name'] as String,
      surname: json['surname'] as String,
      patronymic: json['patronymic'] as String,
    );

Map<String, dynamic> _$$_CustomerToJson(_$_Customer instance) =>
    <String, dynamic>{
      'uid': instance.uid,
      'email': instance.email,
      'phone': instance.phone,
      'name': instance.name,
      'surname': instance.surname,
      'patronymic': instance.patronymic,
    };

_$_Car _$$_CarFromJson(Map<String, dynamic> json) => _$_Car(
      brand: json['brand'] as String,
      model: json['model'] as String,
      body: json['body'] as String,
      licensePlate: json['licensePlate'] as String,
    );

Map<String, dynamic> _$$_CarToJson(_$_Car instance) => <String, dynamic>{
      'brand': instance.brand,
      'model': instance.model,
      'body': instance.body,
      'licensePlate': instance.licensePlate,
    };

_$_Service _$$_ServiceFromJson(Map<String, dynamic> json) => _$_Service(
      description: json['description'] as String,
      duration: json['duration'] as int,
      price: json['price'] as int,
      name: json['name'] as String,
    );

Map<String, dynamic> _$$_ServiceToJson(_$_Service instance) =>
    <String, dynamic>{
      'description': instance.description,
      'duration': instance.duration,
      'price': instance.price,
      'name': instance.name,
    };
