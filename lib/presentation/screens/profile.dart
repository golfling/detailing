import 'dart:ui';

import 'package:detailing/features/firebase/cubit/firebase_cubit.dart';
import 'package:detailing/presentation/screens/add_auto.dart';
import 'package:detailing/presentation/screens/edit_data.dart';
import 'package:detailing/presentation/widgets/error_display.dart';
import 'package:detailing/presentation/widgets/info_card.dart';
import 'package:detailing/presentation/widgets/loading_widget.dart';
import 'package:detailing/presentation/widgets/user_information_column_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text('Профиль'),
            IconButton(
              icon: const Icon(Icons.edit),
              onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const Edit(),
                ),
              ),
            ),
          ],
        ),
      ),
      body: BlocBuilder<FirebaseCubit, FirebaseState>(
        builder: (context, state) {
          return state.map(
            loading: (value) => const LoadingWidget(),
            noUser: (value) => const ErrorDisplay(),
            userLoaded: (value) {
              return SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.only(top: 15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Center(
                        child: UserInformationColumnWidget(
                          userPicture: const NetworkImage(
                              'https://upload.wikimedia.org/wikipedia/commons/thumb/d/d8/Antu_system-switch-user.svg/1200px-Antu_system-switch-user.svg.png'),
                          userName: Text(
                              '${value.customer.surname} ${value.customer.name} ${value.customer.patronymic}'),
                          userEmail: Column(
                            children: [
                              Text(value.customer.email),
                              const SizedBox(height: 2),
                              Text(value.customer.phone),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(height: 40),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        child: InfoCard(
                          prefixIconTitle: const Icon(Icons.directions_car),
                          iconTittle: GestureDetector(
                            child: const Icon(Icons.add),
                            onTap: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const AddAuto(),
                              ),
                            ),
                          ),
                          textTittle: const Text('Автомобили'),
                          bodyWidget: value.customer.cars.isEmpty
                              ? const Text('Список пуст')
                              : ListView.separated(
                                  shrinkWrap: true,
                                  primary: true,
                                  physics: const NeverScrollableScrollPhysics(),
                                  itemBuilder: (context, index) {
                                    return InkWell(
                                      onLongPress: () => _openDialog(index),
                                      child: Row(
                                        children: [
                                          Expanded(
                                            child: Text(
                                              '${value.customer.cars[index].brand} ${value.customer.cars[index].model} (${value.customer.cars[index].licensePlate})',
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .bodyText2,
                                            ),
                                          ),
                                          const SizedBox(width: 10),
                                          Icon(
                                            Icons.delete,
                                            color: Theme.of(context)
                                                .textTheme
                                                .bodyText2!
                                                .color,
                                          ),
                                        ],
                                      ),
                                    );
                                  },
                                  itemCount: value.customer.cars.length,
                                  separatorBuilder: (context, index) {
                                    return const SizedBox(height: 10);
                                  },
                                ),
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }

  void _openDialog(int index) {
    showDialog(
      context: context,
      barrierColor: Colors.transparent,
      builder: (ctx) {
        return BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
          child: AlertDialog(
            backgroundColor: Theme.of(context).backgroundColor,
            title: const Text('Удалить? (Volkswagen CC)'),
            content: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () {
                    BlocProvider.of<FirebaseCubit>(context, listen: false)
                        .deleteCar(index);
                    Navigator.of(context).pop();
                  },
                  child: const Text('Да'),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).pop();
                  },
                  child: const Text('Нет'),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
