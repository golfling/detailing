import 'package:detailing/features/firebase/cubit/firebase_cubit.dart';
import 'package:detailing/presentation/screens/home_page.dart';
import 'package:detailing/presentation/screens/welcome_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CheckPage extends StatelessWidget {
  const CheckPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FirebaseCubit, FirebaseState>(
      builder: (context, state) {
        return state.map(
          loading: (value) {
            return const Scaffold(body: CircularProgressIndicator());
          },
          userLoaded: (value) => const HomePage(),
          noUser: (value) => const WelcomePage(),
        );
      },
    );
  }
}
