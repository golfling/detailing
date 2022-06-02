import 'package:freezed_annotation/freezed_annotation.dart';

part 'services_model.freezed.dart';
part 'services_model.g.dart';

@freezed
class ServicesList with _$ServicesList {
  @JsonSerializable(explicitToJson: true)
  const factory ServicesList({
    required List<ServiceModel> services,
  }) = _ServicesList;

  factory ServicesList.fromJson(Map<String, dynamic> json) =>
      _$ServicesListFromJson(json);
}

@freezed
class ServiceModel with _$ServiceModel {
  @JsonSerializable(explicitToJson: true)
  const factory ServiceModel({
    required String description,
    required int duration,
    required int price,
    required String name,
  }) = _ServiceModel;

  factory ServiceModel.fromJson(Map<String, dynamic> json) =>
      _$ServiceModelFromJson(json);
}
