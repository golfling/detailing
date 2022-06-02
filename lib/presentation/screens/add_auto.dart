import 'package:detailing/features/firebase/cubit/firebase_cubit.dart';
import 'package:detailing/features/firebase/models/auto_names/auto_names.dart';
import 'package:detailing/presentation/widgets/button_with_text.dart';
import 'package:detailing/presentation/widgets/textformfield_default.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';

class AddAuto extends StatefulWidget {
  const AddAuto({Key? key}) : super(key: key);

  @override
  State<AddAuto> createState() => _AddAutoState();
}

class _AddAutoState extends State<AddAuto> {
  String? _selectedBrand;
  String? _selectedModel;
  List<String>? _listModels;
  final String? _selectedBody = 'Пикап';

  bool _acceptInfo = false;

  final _plateController = TextEditingController();
  final _bodyController = TextEditingController();

  final autoNames = autoNamesBased;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Данные об авто'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('Выберите марку'),
            ButtonTheme(
              alignedDropdown: true,
              child: DropdownButton(
                isExpanded: true,
                alignment: AlignmentDirectional.topStart,
                dropdownColor: Theme.of(context).primaryColor,
                style: Theme.of(context).textTheme.bodyText2,
                hint: Text(
                  'Марка',
                  style: Theme.of(context).textTheme.bodyText2,
                ),
                value: _selectedBrand,
                onChanged: (newValue) {
                  setState(() => _selectedBrand = newValue as String?);
                },
                items: autoNames.map(
                  (car) {
                    return DropdownMenuItem(
                      value: car.brand,
                      child: Text(car.brand),
                      onTap: () {
                        _listModels = car.models;
                        _selectedModel = null;
                      },
                    );
                  },
                ).toList(),
              ),
            ),
            const SizedBox(height: 16),
            const Text('Выберите модель'),
            GestureDetector(
              onTap: () {
                if (_selectedBrand == null) {
                  Fluttertoast.showToast(msg: 'Не выбрана модель');
                }
              },
              child: ButtonTheme(
                alignedDropdown: true,
                child: DropdownButton(
                  isExpanded: true,
                  alignment: AlignmentDirectional.topStart,
                  dropdownColor: Theme.of(context).primaryColor,
                  style: Theme.of(context).textTheme.bodyText2,
                  hint: Text(
                    'Model',
                    style: Theme.of(context).textTheme.bodyText2,
                  ),
                  value: _selectedModel,
                  onChanged: (newValue) {
                    setState(() => _selectedModel = newValue as String?);
                  },
                  items: _selectedBrand == null
                      ? null
                      : _listModels?.map(
                          (model) {
                            return DropdownMenuItem(
                              value: model,
                              child: Text(model),
                            );
                          },
                        ).toList(),
                ),
              ),
            ),const Text('Выберите тип кузова'),
            DefaultAppTextFormField(
              textEditingController: _bodyController,
              border: const UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.grey),
              ),
            ),
            const SizedBox(height: 16),
            const Text('Введите регистрационный номер'),
            DefaultAppTextFormField(
              textEditingController: _plateController,
              border: const UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.grey),
              ),
            ),
            const SizedBox(height: 16),
            Row(
              children: [
                Checkbox(
                  visualDensity:
                      const VisualDensity(horizontal: -4, vertical: -4),
                  materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                  fillColor: MaterialStateProperty.all<Color>(Colors.blueGrey),
                  value: _acceptInfo,
                  onChanged: (value) {
                    setState(() {});
                    _acceptInfo = value!;
                  },
                ),
                const SizedBox(width: 10),
                const Text('Даю согласие на обработку данных')
              ],
            ),
            const SizedBox(height: 16),
            ButtonWithText(
              mainAxisAlignment: MainAxisAlignment.center,
              text: const Text('Готово'),
              onPressed: () {
                if (_selectedBrand != null &&
                    _selectedModel != null &&
                    _plateController.text.trim().isNotEmpty &&
                    _selectedBody != null &&
                    _acceptInfo == true) {
                  BlocProvider.of<FirebaseCubit>(context, listen: false).addCar(
                    brand: _selectedBrand!,
                    model: _selectedModel!,
                    licensePlate: _plateController.text.trim(),
                    body: _selectedBody!,
                  );
                  Navigator.of(context).pop();
                } else {
                  Fluttertoast.showToast(msg: 'Проверьте поля');
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
