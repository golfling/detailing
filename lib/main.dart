import 'package:detailing/features/firebase/cubit/firebase_cubit.dart';
import 'package:detailing/presentation/design/theme.dart';
import 'package:detailing/presentation/screens/home_page.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
  Firebase.initializeApp();
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<FirebaseCubit>(
          create: (BuildContext context) => FirebaseCubit(),
        ),
      ],
      child: MaterialApp(
        theme: AppTheme.dark,
        routes: {
          '/home_page': (context) => const HomePage(),
        },
        initialRoute: '/home_page',
      ),
    );
  }
}
