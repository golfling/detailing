class OrderTable {
  static const String tableName = 'order';

  static const String columnId = '_id';
  static const String columnOrderId = 'Order_id';
  static const String columnCarId = 'car_id';
  static const String columnFullPrice = 'full_price';
  static const String columnOrderDate = 'order_date';
  static const String columnDate = 'date';
  static const String columnAdress = 'adress';

  static const List<String> values = [
    columnId,
    columnOrderId,
    columnCarId,
    columnFullPrice,
    columnOrderDate,
    columnDate,
    columnAdress,
  ];
}

class Order {
  final int? id;
  final String authToken;
  final String name;
  final String surname;
  final String patronymic;
  final String email;
  final String adress;

  const Order({
    required this.id,
    required this.authToken,
    required this.name,
    required this.surname,
    required this.patronymic,
    required this.email,
    required this.adress,
  });

  Order copy({
    int? id,
    String? authToken,
    String? name,
    String? surname,
    String? patronymic,
    String? email,
    String? phone,
    String? adress,
  }) =>
      Order(
        id: id ?? this.id,
        authToken: authToken ?? this.authToken,
        name: name ?? this.name,
        surname: surname ?? this.surname,
        patronymic: patronymic ?? this.patronymic,
        email: email ?? this.email,
        adress: adress ?? this.adress,
      );

  Map<String, dynamic> toJson() => {
        OrderTable.columnId: id,
        OrderTable.columnCarId: name,
        OrderTable.columnFullPrice: surname,
        OrderTable.columnOrderDate: patronymic,
        OrderTable.columnDate: email,
        OrderTable.columnAdress: adress,
      };

  Order.fromJson(Map<String, dynamic> json)
      : id = json[OrderTable.columnId] as int,
        authToken = json[OrderTable.columnOrderId] as String,
        name = json[OrderTable.columnCarId] as String,
        surname = json[OrderTable.columnFullPrice] as String,
        patronymic = json[OrderTable.columnOrderDate] as String,
        email = json[OrderTable.columnDate] as String,
        adress = json[OrderTable.columnAdress] as String;
}
