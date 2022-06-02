import 'package:detailing/features/firebase/cubit/firebase_cubit.dart';
import 'package:detailing/presentation/widgets/button_with_text.dart';
import 'package:detailing/presentation/widgets/error_display.dart';
import 'package:detailing/presentation/widgets/info_card.dart';
import 'package:detailing/presentation/widgets/loading_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class OrderScreen extends StatefulWidget {
  const OrderScreen({Key? key}) : super(key: key);

  @override
  State<OrderScreen> createState() => _OrderScreenState();
}

class _OrderScreenState extends State<OrderScreen> {
  Object? _cars;

  final controller = TextEditingController();
  final _selectCategories = <int>[];
  int finalCost = 0;
  int finalDuration = 0;

  void setCarValue(String _value) {
    controller.text = _value;
  }

  void _onCategorySelected({
    required bool selected,
    required int id,
    required int price,
    required int duration,
  }) {
    if (selected == true) {
      finalDuration += duration;
      finalCost += price;
      setState(() {
        _selectCategories.add(id);
      });
    } else {
      setState(() {
        finalCost -= price;
        finalDuration -= duration;
        _selectCategories.remove(id);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Запись'),
      ),
      body: BlocBuilder<FirebaseCubit, FirebaseState>(
        builder: (context, state) {
          return state.map(
            loading: (value) => const LoadingWidget(),
            noUser: (value) => const ErrorDisplay(),
            userLoaded: (value) {
              return SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        child: InfoCard(
                          prefixIconTitle: const Icon(Icons.directions_car),
                          textTittle: const Text('Выберите автомобиль'),
                          bodyWidget: value.customer.cars.isEmpty
                              ? const Text('No cars')
                              : ListView.builder(
                                  shrinkWrap: true,
                                  primary: true,
                                  physics: const NeverScrollableScrollPhysics(),
                                  itemBuilder: (context, index) {
                                    return RadioListTile(
                                      toggleable: true,
                                      dense: true,
                                      contentPadding: EdgeInsets.zero,
                                      value: index,
                                      groupValue: _cars,
                                      title: Text(
                                        '${value.customer.cars[index].brand} ${value.customer.cars[index].model}',
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodyText2,
                                      ),
                                      subtitle: Text(
                                        value.customer.cars[index].licensePlate,
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodyText2,
                                      ),
                                      onChanged: (_val) {
                                        setCarValue(value.customer.cars[index]
                                            .toString());
                                        setState(
                                          () {
                                            if (_cars != _val) {
                                              _cars = _val;
                                            } else {
                                              _cars = 0;
                                            }
                                          },
                                        );
                                      },
                                      activeColor:
                                          Theme.of(context).primaryColorLight,
                                    );
                                  },
                                  itemCount: value.customer.cars.length,
                                ),
                        ),
                      ),
                      const SizedBox(height: 20),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        child: InfoCard(
                          prefixIconTitle: const Icon(Icons.local_car_wash),
                          textTittle: const Text('Выберите услуги'),
                          bodyWidget: value.servicesList == null ||
                                  value.servicesList!.services.isEmpty
                              ? const Text('Choose services')
                              : ListView.builder(
                                  shrinkWrap: true,
                                  primary: true,
                                  physics: const NeverScrollableScrollPhysics(),
                                  itemBuilder: (context, index) {
                                    return CheckboxListTile(
                                        contentPadding: EdgeInsets.zero,
                                        dense: true,
                                        controlAffinity:
                                            ListTileControlAffinity.leading,
                                        subtitle: Text(
                                          'Цена: ${value.servicesList!.services[index].price.toString()} бел. рублей',
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodyText2,
                                        ),
                                        title: Text(
                                          value.servicesList!.services[index]
                                              .name,
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodyText2,
                                        ),
                                        secondary: Tooltip(
                                          message: value.servicesList!
                                              .services[index].description,
                                          triggerMode: TooltipTriggerMode.tap,
                                          child: const Icon(Icons.info,
                                              color: Colors.grey),
                                        ),
                                        onChanged: (val) {
                                          if (val != null) {
                                            _onCategorySelected(
                                                selected: val,
                                                id: index,
                                                price: value.servicesList!
                                                    .services[index].price,
                                                duration: value.servicesList!
                                                    .services[index].duration);
                                          }
                                        },
                                        value:
                                            _selectCategories.contains(index));
                                  },
                                  itemCount:
                                      value.servicesList!.services.length,
                                ),
                          bottomWidget: SizedBox(
                            width: double.infinity,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Text('Итого: $finalCost бел. рублей.'),
                                Text('Длительность: $finalDuration минут.'),
                              ],
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 20),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 16),
                        child: InfoCard(
                          prefixIconTitle: Icon(Icons.tab),
                          textTittle: Text('11 мая 2022'),
                          bodyWidget: DecoratedBox(
                            decoration: BoxDecoration(
                              color: Theme.of(context).primaryColorLight,
                              borderRadius: const BorderRadius.all(
                                Radius.circular(9),
                              ),
                            ),
                            child: Icon(Icons.keyboard_arrow_right_rounded),
                            // Padding(
                            //   padding: const EdgeInsets.symmetric(
                            //       vertical: 8.0, horizontal: 60),
                            //   child: Text('19:00'),
                            // ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 200,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 40),
                        child: ButtonWithText(
                            text: Text('Записаться'),
                            mainAxisAlignment: MainAxisAlignment.center,
                            onPressed: () {}),
                      ),
                      const SizedBox(height: 400),
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
}
