class ServiceTable {
  static const String tableName = 'service';

  static const String columnId = '_id';
  static const String columnName = 'name';
  static const String columnBasePrice = 'base_price';
  static const String columnDuration = 'duration';

  static const List<String> values = [
    columnId,
    columnName,
    columnBasePrice,
    columnDuration,
  ];
}

class Service {
  final int? id;
  final String name;
  final double basePrice;
  final int duration;

  const Service({
    this.id,
    required this.name,
    required this.basePrice,
    required this.duration,
  });
  Service copy({
    int? id,
    String? name,
    double? basePrice,
    int? duration
  }) =>
      Service(
        id: id ?? this.id,
        name: name ?? this.name,
        basePrice: basePrice ?? this.basePrice, duration: duration ?? this.duration,
      );

  Map<String, dynamic> toJson() => {
        ServiceTable.columnId: id,
        ServiceTable.columnName: name,
        ServiceTable.columnBasePrice: basePrice,
        ServiceTable.columnDuration: duration,
      };

  Service.fromJson(Map<String, dynamic> json)
      : id = json[ServiceTable.columnId] as int,
        duration= json[ServiceTable.columnDuration] as int,
        name = json[ServiceTable.columnName] as String,
        basePrice = json[ServiceTable.columnBasePrice] as double;
}
