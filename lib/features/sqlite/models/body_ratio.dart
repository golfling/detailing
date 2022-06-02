class BodyRatioTable {
  static const String tableName = 'service';

  static const String columnId = '_id';
  static const String columnBodyName = 'body_Name';
  static const String columnRatio = 'ratio';

  static const List<String> values = [
    columnId,
    columnBodyName,
    columnRatio,
  ];
}

class BodyRatio {
  final int? id;
  final String bodyName;
  final double ratio;

  const BodyRatio({
    this.id,
    required this.bodyName,
    required this.ratio,
  });
  
  BodyRatio copy({
    int? id,
    String? bodyName,
    double? ratio,
  }) =>
      BodyRatio(
        id: id ?? this.id,
        bodyName: bodyName ?? this.bodyName,
        ratio: ratio ?? this.ratio,
      );

  Map<String, dynamic> toJson() => {
        BodyRatioTable.columnId: id,
        BodyRatioTable.columnBodyName: bodyName,
        BodyRatioTable.columnRatio: ratio,
      };

  BodyRatio.fromJson(Map<String, dynamic> json)
      : id = json[BodyRatioTable.columnId] as int,
        bodyName = json[BodyRatioTable.columnBodyName] as String,
        ratio = json[BodyRatioTable.columnRatio] as double;
}
