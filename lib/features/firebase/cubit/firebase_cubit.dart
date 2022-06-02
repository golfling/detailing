import 'dart:async';

import 'package:detailing/features/firebase/models/customer_model/customer_model.dart';
import 'package:detailing/features/firebase/models/services_model/services_model.dart';
import 'package:detailing/features/firebase/service/authentication_service.dart';
import 'package:detailing/features/firebase/service/firestore_service.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'firebase_cubit.freezed.dart';
part 'firebase_state.dart';

class FirebaseCubit extends Cubit<FirebaseState> {
  FirebaseCubit({
    required AuthenticationService authenticationService,
    required FirestoreService firestoreService,
  })  : _authenticationService = authenticationService,
        _firestoreService = firestoreService,
        super(const FirebaseState.loading()) {
    authLisener = _authenticationService.authStateChanges.listen(
      (user) {
        if (user != null) {
          _userInfoStreamListener =
              firestoreService.getCustomerStream(user.uid).listen(
            (customer) {
              if (customer != null) {
                this.customer = customer;
                emit(FirebaseState.userLoaded(customer: customer));
                getServicesList();
              }
            },
          );
          getCustomerInfo(user);
        } else {
          emit(const FirebaseState.noUser());
        }
      },
    );
  }

  late final StreamSubscription<User?> authLisener;
  late StreamSubscription<CustomerModel?> _userInfoStreamListener;
  final AuthenticationService _authenticationService;
  final FirestoreService _firestoreService;
  late CustomerModel customer;

  void register({
    required String name,
    required String surname,
    required String patronymic,
    required String phone,
    required String email,
    required String password,
  }) {
    emit(const FirebaseState.loading());
    try {
      _authenticationService
          .createUserWithEmailAndPassword(email: email, password: password)
          .then(
            (user) => _firestoreService.registerCustomer(
              uid: user!.user!.uid,
              name: name,
              surname: surname,
              patronymic: patronymic,
              phone: phone,
              email: email,
            ),
          );
    } on Exception catch (e) {
      print(e);
    }
  }

  void signIn(String login, String password) {
    emit(const FirebaseState.loading());
    try {
      _authenticationService.signInWithEmailAndPassword(
          email: login, password: password);
    } on Exception catch (e) {
      print(e);
    }
  }

  void addCar({
    required String brand,
    required String model,
    required String licensePlate,
    required String body,
  }) {
    _firestoreService.addCar(
        brand: brand, model: model, licensePlate: licensePlate, body: body);
  }

  void deleteCar(int index) {
    _firestoreService.deleteCar(index);
  }

  void getCustomerInfo(User user) {
    _firestoreService.getCustomer(user.uid).then(
      (customer) {
        emit(FirebaseState.userLoaded(customer: customer));
        this.customer = customer;
      },
    );
  }

  void getServicesList() {
    _firestoreService.getServicesList().then(
          (servicesList) => emit(FirebaseState.userLoaded(
              customer: customer, servicesList: servicesList)),
        );
  }

  void logOut() {
    try {
      _authenticationService.signOut();
    } on Exception catch (e) {
      print(e);
    }
  }

  @override
  Future<void> close() {
    authLisener.cancel();
    _userInfoStreamListener.cancel();
    return super.close();
  }
}
