class CustomerTable {
  static const String tableName = 'customer';

  static const String columnId = '_id';
  static const String columnAuthToken = 'auth_token';
  static const String columnName = 'name';
  static const String columnSurname = 'surname';
  static const String columnPatronymic = 'patronymic';
  static const String columnEmail = 'email';
  static const String columnPhone = 'phone';
  static const String columnAdress = 'adress';

  static const List<String> values = [
    columnId,
    columnAuthToken,
    columnName,
    columnSurname,
    columnPatronymic,
    columnEmail,
    columnPhone,
    columnAdress,
  ];
}

class Customer {
  final int id;
  final String authToken;
  final String name;
  final String surname;
  final String patronymic;
  final String email;
  final String phone;
  final String adress;

  const Customer({
    required this.id,
    required this.authToken,
    required this.name,
    required this.surname,
    required this.patronymic,
    required this.email,
    required this.phone,
    required this.adress,
  });

  Customer copy({
    int? id,
    String? authToken,
    String? name,
    String? surname,
    String? patronymic,
    String? email,
    String? phone,
    String? adress,
  }) =>
      Customer(
        id: id ?? this.id,
        authToken: authToken ?? this.authToken,
        name: name ?? this.name,
        surname: surname ?? this.surname,
        patronymic: patronymic ?? this.patronymic,
        email: email ?? this.email,
        phone: phone ?? this.phone,
        adress: adress ?? this.adress,
      );

  Map<String, dynamic> toJson() => {
        CustomerTable.columnId: id,
        CustomerTable.columnName: name,
        CustomerTable.columnSurname: surname,
        CustomerTable.columnPatronymic: patronymic,
        CustomerTable.columnEmail: email,
        CustomerTable.columnPhone: phone,
        CustomerTable.columnAdress: adress,
      };

  Customer.fromJson(Map<String, dynamic> json)
      : id = json[CustomerTable.columnId] as int,
        authToken = json[CustomerTable.columnAuthToken] as String,
        name = json[CustomerTable.columnName] as String,
        surname = json[CustomerTable.columnSurname] as String,
        patronymic = json[CustomerTable.columnPatronymic] as String,
        email = json[CustomerTable.columnEmail] as String,
        phone = json[CustomerTable.columnPhone] as String,
        adress = json[CustomerTable.columnAdress] as String;
}
