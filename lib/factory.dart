import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:detailing/features/firebase/cubit/firebase_cubit.dart';
import 'package:detailing/features/firebase/service/authentication_service.dart';
import 'package:detailing/features/firebase/service/firestore_service.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get_it/get_it.dart';

class Factory {
  void initialize() {
    GetIt.I.registerFactory<FirebaseCubit>(
      () => FirebaseCubit(
        authenticationService: GetIt.I.get<AuthenticationService>(),
        firestoreService: GetIt.I.get<FirestoreService>(),
      ),
    );

    GetIt.I.registerFactory<AuthenticationService>(
        () => AuthenticationService(GetIt.I.get<FirebaseAuth>()));

    GetIt.I.registerFactory<FirebaseAuth>(
      () => FirebaseAuth.instance,
    );

    GetIt.I.registerFactory<FirestoreService>(
        () => FirestoreService(GetIt.I.get<FirebaseFirestore>()));

    GetIt.I.registerFactory<FirebaseFirestore>(
      () => FirebaseFirestore.instance,
    );
  }
}
