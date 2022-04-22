import 'package:detailing/features/firebase/cubit/firebase_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AuthScreen extends StatelessWidget {
  const AuthScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<FirebaseCubit, FirebaseState>(
      listener: (context, state) {},
      builder: (context, state) {
        return state.map(
          loading: ((value) => const CircularProgressIndicator()),
          noUser: ((value) {
            return Scaffold(
              body: Column(
                children: [
                  TextFormField(),
                ],
              ),
            );
          }),
          userLoaded: ((value) {
            return const Text('data');
          }),
          error: ((value) {
            return const Text('error!');
          }),
        );
      },
    );
  }
}
