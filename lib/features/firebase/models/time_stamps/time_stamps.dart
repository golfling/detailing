import 'package:freezed_annotation/freezed_annotation.dart';

part 'time_stamps.freezed.dart';
part 'time_stamps.g.dart';

@freezed
class TimeStampsModel with _$TimeStampsModel {
  @JsonSerializable(explicitToJson: true)
  const factory TimeStampsModel({
    required List<FreeDays> days,
  }) = _TimeStampsModel;

  factory TimeStampsModel.fromJson(Map<String, dynamic> json) =>
      _$TimeStampsModelFromJson(json);
}

@freezed
class FreeDays with _$FreeDays {
  @JsonSerializable(explicitToJson: true)
  const factory FreeDays({
    required int day,
    required List<int> freeHours,
  }) = _FreeDays;

  factory FreeDays.fromJson(Map<String, dynamic> json) =>
      _$FreeDaysFromJson(json);
}
