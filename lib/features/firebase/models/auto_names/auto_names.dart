import 'dart:convert';

import 'package:detailing/features/firebase/models/auto_names/json_data.dart';

final autoNamesBased = autoNamesFromJson(jsonEncode(autoNamesJson));

List<AutoNames> autoNamesFromJson(String str) =>
    List<AutoNames>.from(json.decode(str).map((x) => AutoNames.fromJson(x)));

String autoNamesToJson(List<AutoNames> data) =>
    json.encode(List<AutoNames>.from(data.map((x) => x.toJson())));

class AutoNames {
  AutoNames({
    required this.brand,
    required this.models,
  });

  String brand;
  List<String> models;

  factory AutoNames.fromJson(Map<String, dynamic> json) => AutoNames(
        brand: json['brand'],
        models: List<String>.from(json['models'].map((x) => x)),
      );

  Map<String, dynamic> toJson() => {
        'brand': brand,
        'models': List<dynamic>.from(models.map((x) => x)),
      };
}

