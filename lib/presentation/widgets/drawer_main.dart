import 'package:detailing/features/firebase/cubit/firebase_cubit.dart';
import 'package:detailing/presentation/screens/about.dart';
import 'package:detailing/presentation/screens/profile.dart';
import 'package:detailing/presentation/widgets/drawer_point.dart';
import 'package:detailing/presentation/widgets/loading_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Material(
        color: Theme.of(context).scaffoldBackgroundColor,
        child: SafeArea(
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              BlocBuilder<FirebaseCubit, FirebaseState>(
                builder: (context, state) {
                  return state.map(
                    loading: (loading) => const Center(child: LoadingWidget()),
                    userLoaded: (loaded) {
                      final user = loaded.customer;
                      return UserAccountsDrawerHeader(
                        accountName: Text(
                          '${loaded.customer.surname} ${loaded.customer.name} ${loaded.customer.patronymic} ',
                          style: const TextStyle(
                            fontSize: 15,
                            color: Colors.white,
                          ),
                        ),
                        accountEmail: Text(
                          user.email,
                          style: const TextStyle(
                            fontSize: 15,
                            color: Colors.white,
                          ),
                        ),
                        currentAccountPicture: const CircleAvatar(
                          radius: 50,
                          backgroundImage: NetworkImage(
                              'https://upload.wikimedia.org/wikipedia/commons/thumb/d/d8/Antu_system-switch-user.svg/1200px-Antu_system-switch-user.svg.png'),
                        ),
                        decoration: BoxDecoration(
                          color: Theme.of(context).primaryColorDark,
                        ),
                      );
                    },
                    noUser: (error) => const UserAccountsDrawerHeader(
                      accountEmail: Text(
                        'Error',
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                        ),
                      ),
                      accountName: null,
                    ),
                  );
                },
              ),
              DrawerPoint(
                nameOfPoint: const Text('Профиль'),
                icon: const Icon(Icons.account_circle_outlined),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Profile()),
                  );
                },
              ),
              DrawerPoint(
                nameOfPoint: const Text('О нас'),
                icon: const Icon(Icons.info_outline),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const About()),
                  );
                },
              ),
              Divider(
                color: Theme.of(context).primaryColor,
                thickness: 1,
              ),
              DrawerPoint(
                nameOfPoint: const Text('Выйти'),
                icon: const Icon(Icons.info_outline),
                onTap: () {
                  Navigator.of(context).pop();
                  BlocProvider.of<FirebaseCubit>(context, listen: false)
                      .logOut();
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
