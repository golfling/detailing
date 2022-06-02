import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:detailing/features/firebase/models/customer_model/customer_model.dart';
import 'package:detailing/features/firebase/models/services_model/services_model.dart';

class FirestoreService {
  FirestoreService(FirebaseFirestore database) : _database = database;

  final FirebaseFirestore _database;
  late CustomerModel _customer;

  Future<void> registerCustomer({
    required String uid,
    required String name,
    required String surname,
    required String patronymic,
    required String phone,
    required String email,
  }) async {
    final customer = CustomerModel(
      uid: uid,
      email: email,
      phone: phone,
      name: name,
      surname: surname,
      patronymic: patronymic,
    );
    _customer = customer;
    await _database.collection('customers').doc(uid).set(customer.toJson());
  }

  Stream<CustomerModel?> getCustomerStream(String uid) => _database
      .collection('customers')
      .doc(uid)
      .snapshots()
      .map((snapshot) => CustomerModel.fromJson(snapshot.data()!));

  Future<CustomerModel> getCustomer(String uid) async {
    final snapshot = await _database.collection('customers').doc(uid).get();
    if (snapshot. exists) {
      final customer = CustomerModel.fromJson(snapshot.data()!);
      _customer = customer;
      return customer;
    }
    throw Exception();
  }

  Future<void> addCar({
    required String brand,
    required String model,
    required String licensePlate,
    required String body,
  }) async {
    final _tempCustomer = _customer.copyWith(
      cars: _customer.cars
        ..add(
          CustomerCar(
            brand: brand,
            body: body,
            licensePlate: licensePlate,
            model: model,
          ),
        ),
    );

    await _database.collection('customers').doc(_customer.uid).set(
          _tempCustomer.toJson(),
          SetOptions(merge: true),
        );
  }

  Future<void> deleteCar(int index) async {
    final _tempCustomer = _customer.copyWith(
      cars: _customer.cars..removeAt(index),
    );

    await _database.collection('customers').doc(_customer.uid).set(
          _tempCustomer.toJson(),
          SetOptions(merge: true),
        );
  }

  Future<ServicesList> getServicesList() async {
    final snapshot = await _database.collection('services').doc('services_ru').get();
    if (snapshot.exists) {
      final services = ServicesList.fromJson(snapshot.data()!);
      return services;
    }
    throw Exception();
  }
}
