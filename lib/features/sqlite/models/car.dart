class CarTable {
  static const String tableName = 'car';

  static const String columnId = '_id';
  static const String columnBrand = 'brand';
  static const String columnModel = 'model';
  static const String columnLicensePlate = 'license_plate';
  static const String columnOwnerId = 'owner_id';

  static const List<String> values = [
    columnId,
    columnBrand,
    columnModel,
    columnLicensePlate,
    columnOwnerId,
  ];
}

class Car {
  final int? id;
  final String brand;
  final String model;
  final String licensePlate;
  final int ownerId;

  const Car({
    this.id,
    required this.brand,
    required this.model,
    required this.licensePlate,
    required this.ownerId,
  });
  Car copy({
    int? id,
    String? brand,
    String? model,
    String? licensePlate,
    int? ownerId,
  }) =>
      Car(
        id: id ?? this.id,
        brand: brand ?? this.brand,
        model: model ?? this.model,
        licensePlate: licensePlate ?? this.licensePlate,
        ownerId: ownerId ?? this.ownerId,
      );

  Map<String, dynamic> toJson() => {
        CarTable.columnId: id,
        CarTable.columnBrand: brand,
        CarTable.columnModel: model,
        CarTable.columnLicensePlate: licensePlate,
        CarTable.columnOwnerId: ownerId,
      };

  Car.fromJson(Map<String, dynamic> json)
      : id = json[CarTable.columnId] as int,
        brand = json[CarTable.columnBrand] as String,
        model = json[CarTable.columnModel] as String,
        licensePlate = json[CarTable.columnLicensePlate] as String,
        ownerId = json[CarTable.columnOwnerId] as int;
}
