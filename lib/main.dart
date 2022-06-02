import 'package:detailing/factory.dart';
import 'package:detailing/features/firebase/cubit/firebase_cubit.dart';
import 'package:detailing/features/firebase/view/check_page.dart';
import 'package:detailing/presentation/design/theme.dart';
import 'package:detailing/presentation/screens/home_page.dart';
import 'package:detailing/presentation/screens/sing_in.dart';
import 'package:detailing/presentation/screens/sing_up.dart';
import 'package:detailing/presentation/screens/welcome_page.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:get_it/get_it.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  Factory().initialize();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<FirebaseCubit>(
          create: (context) => GetIt.I.get<FirebaseCubit>(),
        ),
      ],
      child: MaterialApp(
        theme: AppTheme.dark,
        localizationsDelegates: AppLocalizations.localizationsDelegates,
        supportedLocales: AppLocalizations.supportedLocales,
        routes: {
          '/welcome_page': (context) => const WelcomePage(),
          '/sing_in': (context) => const SingIn(),
          '/sing_up': (context) => const SingUp(),
          '/home_page': (context) => const HomePage(),
          '/check_page': (context) => const CheckPage(),
        },
        initialRoute: '/check_page',
      ),
    );
  }
}
