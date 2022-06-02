import 'package:freezed_annotation/freezed_annotation.dart';

part 'order_model.freezed.dart';
part 'order_model.g.dart';

@freezed
class OrderModel with _$OrderModel {
  @JsonSerializable(explicitToJson: true)
  const factory OrderModel({
    required Customer customer,
    required Car car,
    required List<Service> services,
    required DateTime recordingDate,
    required DateTime date,
    required int fullCost,
    required int duration,
  }) = _OrderModel;

  factory OrderModel.fromJson(Map<String, dynamic> json) =>
      _$OrderModelFromJson(json);
}

@freezed
class Customer with _$Customer {
  @JsonSerializable(explicitToJson: true)
  const factory Customer({
    required String uid,
    required String email,
    required String phone,
    required String name,
    required String surname,
    required String patronymic,
  }) = _Customer;
  factory Customer.fromJson(Map<String, dynamic> json) =>
      _$CustomerFromJson(json);
}

@freezed
class Car with _$Car {
  @JsonSerializable(explicitToJson: true)
  const factory Car({
    required String brand,
    required String model,
    required String body,
    required String licensePlate,
  }) = _Car;
  factory Car.fromJson(Map<String, dynamic> json) => _$CarFromJson(json);
}

@freezed
class Service with _$Service {
  @JsonSerializable(explicitToJson: true)
  const factory Service({
    required String description,
    required int duration,
    required int price,
    required String name,
  }) = _Service;

  factory Service.fromJson(Map<String, dynamic> json) =>
      _$ServiceFromJson(json);
}
