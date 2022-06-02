import 'package:freezed_annotation/freezed_annotation.dart';

part 'customer_model.freezed.dart';
part 'customer_model.g.dart';

@Freezed(makeCollectionsUnmodifiable: false)
class CustomerModel with _$CustomerModel {
  @JsonSerializable(explicitToJson: true)
  const factory CustomerModel({
    required String uid,
    required String email,
    required String phone,
    required String name,
    required String surname,
    required String patronymic,
    String? adress,
    @Default([]) List<CustomerCar> cars,
  }) = _LyricsModel;

  factory CustomerModel.fromJson(Map<String, dynamic> json) =>
      _$CustomerModelFromJson(json);
}

@Freezed(makeCollectionsUnmodifiable: false)
class CustomerCar with _$CustomerCar {
  @JsonSerializable(explicitToJson: true)
  const factory CustomerCar({
    required String brand,
    required String model,
    required String body,
    required String licensePlate,
  }) = _CustomerCar;

  factory CustomerCar.fromJson(Map<String, dynamic> json) =>
      _$CustomerCarFromJson(json);
}
