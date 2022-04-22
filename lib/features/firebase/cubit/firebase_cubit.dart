import 'package:detailing/features/firebase/repository/auth.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'firebase_cubit.freezed.dart';
part 'firebase_state.dart';

class FirebaseCubit extends Cubit<FirebaseState> {
  FirebaseCubit() : super(const FirebaseState.loading());

  final firebaseRepository = FirebaseRepository();

  register(login, password) {
    FirebaseRepository()
        .createUserWithEmailAndPassword(email: login, password: password);
  }
}
