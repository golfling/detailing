import 'package:detailing/features/firebase/cubit/firebase_cubit.dart';
import 'package:detailing/presentation/widgets/appbar_title_with_icon.dart';
import 'package:detailing/presentation/widgets/text_button.dart';
import 'package:detailing/presentation/widgets/textformfield_default.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';

class SingUp extends StatefulWidget {
  const SingUp({Key? key}) : super(key: key);

  @override
  _SingUpState createState() => _SingUpState();
}

class _SingUpState extends State<SingUp> {
  bool hidePassword = true;
  bool hideConfirmPassword = true;

  bool buttonAvailable = false;

  final _nameController = TextEditingController();
  final _surnameController = TextEditingController();
  final _patronymicController = TextEditingController();
  final _phoneController = TextEditingController();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _confirmPasswordController = TextEditingController();

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    _confirmPasswordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const AppBarTitleWithIcon(
          text: Text('Регистрация'),
        ),
        elevation: 1,
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            children: [
              SizedBox(height: MediaQuery.of(context).size.height * 0.03),
              DefaultAppTextFormField(
                textEditingController: _nameController,
                labelText: 'Имя',
                errorText: nameValidator(_nameController.text),
                prefixIcon: const Icon(
                  Icons.man,
                  color: Colors.grey,
                ),
                keyboardType: TextInputType.name,
              ),
              const SizedBox(height: 5),
              DefaultAppTextFormField(
                textEditingController: _surnameController,
                labelText: 'Фамилия',
                errorText: surnameValidator(_surnameController.text),
                prefixIcon: const Icon(
                  Icons.man,
                  color: Colors.grey,
                ),
                keyboardType: TextInputType.name,
              ),
              const SizedBox(height: 5),
              DefaultAppTextFormField(
                textEditingController: _patronymicController,
                labelText: 'Отчество',
                errorText: patronymicValidator(_patronymicController.text),
                prefixIcon: const Icon(
                  Icons.man,
                  color: Colors.grey,
                ),
                keyboardType: TextInputType.name,
              ),
              const SizedBox(height: 5),
              DefaultAppTextFormField(
                textEditingController: _phoneController,
                maxLength: 13,
                labelText: 'Номер телефона',
                errorText: phoneValidator(_phoneController.text),
                border: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.red.withOpacity(0.3),
                  ),
                ),
                prefixIcon: const Icon(
                  Icons.phone_android_outlined,
                  color: Colors.grey,
                ),
                keyboardType: TextInputType.phone,
              ),
              const SizedBox(height: 5),
              DefaultAppTextFormField(
                textEditingController: _emailController,
                labelText: 'Email',
                errorText: emailValidator(_emailController.text),
                prefixIcon: const Icon(
                  EvaIcons.emailOutline,
                  color: Colors.grey,
                ),
                keyboardType: TextInputType.emailAddress,
              ),
              const SizedBox(height: 5),
              DefaultAppTextFormField(
                obscureText: hidePassword,
                labelText: 'Пароль',
                textEditingController: _passwordController,
                prefixIcon: const Icon(
                  Icons.vpn_key,
                  color: Colors.grey,
                ),
                autocorrect: false,
                keyboardType: TextInputType.text,
                suffixIcon: IconButton(
                  color: Colors.grey.withOpacity(0.5),
                  icon: Icon(
                      hidePassword ? Icons.visibility_off : Icons.visibility),
                  onPressed: () {
                    setState(
                      () {
                        hidePassword = !hidePassword;
                      },
                    );
                  },
                ),
              ),
              const SizedBox(height: 5),
              DefaultAppTextFormField(
                obscureText: hideConfirmPassword,
                labelText: 'Подтвердите пароль',
                textEditingController: _confirmPasswordController,
                prefixIcon: const Icon(
                  Icons.vpn_key,
                  color: Colors.grey,
                ),
                autocorrect: false,
                keyboardType: TextInputType.text,
                suffixIcon: IconButton(
                  color: Colors.grey.withOpacity(0.5),
                  icon: Icon(
                    hideConfirmPassword
                        ? Icons.visibility_off
                        : Icons.visibility,
                  ),
                  onPressed: () {
                    setState(
                      () {
                        hideConfirmPassword = !hideConfirmPassword;
                      },
                    );
                  },
                ),
              ),
              const SizedBox(height: 20),
              Align(
                alignment: Alignment.centerRight,
                child: AppTextButton(
                  text: const Text('Зарегистрироваться'),
                  onTap: () {
                    if (_nameController.text.trim().isEmpty) {
                      Fluttertoast.showToast(
                        msg: 'Поле "Имя" путое',
                        backgroundColor: Colors.red,
                      );
                      return;
                    }

                    if (_surnameController.text.trim().isEmpty) {
                      Fluttertoast.showToast(
                        msg: 'Поле "Фамилия" путое',
                        backgroundColor: Colors.red,
                      );
                      return;
                    }

                    if (_patronymicController.text.trim().isEmpty) {
                      Fluttertoast.showToast(
                        msg: 'Поле "Отчество" путое',
                        backgroundColor: Colors.red,
                      );
                      return;
                    }

                    if (_emailController.text.trim().isEmpty) {
                      Fluttertoast.showToast(
                        msg: 'Поле "Эмэил" путое',
                        backgroundColor: Colors.red,
                      );
                      return;
                    }

                    if (_phoneController.text.trim().isEmpty) {
                      Fluttertoast.showToast(
                        msg: 'Поле "Номер" путое',
                        backgroundColor: Colors.red,
                      );
                      return;
                    }

                    if (_passwordController.text.trim().isEmpty) {
                      Fluttertoast.showToast(
                        msg: 'Поле "Пароль" путое',
                        backgroundColor: Colors.red,
                      );
                      return;
                    }

                    if (_confirmPasswordController.text.trim().isEmpty) {
                      Fluttertoast.showToast(
                        msg: 'Поле "Подтвердите пароль" путое',
                        backgroundColor: Colors.red,
                      );
                      return;
                    }

                    if (_passwordController.text.trim() !=
                        _confirmPasswordController.text.trim()) {
                      Fluttertoast.showToast(
                        msg: 'Пароль не совпадает',
                        backgroundColor: Colors.red,
                      );
                    } else {
                      BlocProvider.of<FirebaseCubit>(context, listen: false)
                          .register(
                        email: _emailController.text.trim(),
                        name: _nameController.text.trim(),
                        phone: _phoneController.text.trim(),
                        password: _passwordController.text.trim(),
                        patronymic: _patronymicController.text.trim(),
                        surname: _surnameController.text.trim(),
                      );
                      Navigator.of(context).pop();
                    }
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  String? phoneValidator(String? text) {
    if (text == null || text.isEmpty) {
      return null;
    }

    if (text.length != 13 || !text.contains('+375')) {
      return 'Введите валидный номер. Пример: +375291234567';
    }

    return null;
  }

  String? emailValidator(String? text) {
    if (text == null || text.isEmpty) {
      return null;
    }
    const pattern =
        r"^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]"
        r'{0,253}[a-zA-Z0-9])?(?:\.[a-zA-Z0-9](?:[a-zA-Z0-9-]'
        r'{0,253}[a-zA-Z0-9])?)*$';
    final regex = RegExp(pattern);

    if (!regex.hasMatch(text)) {
      return 'Введите валидный адрес электронной почты';
    }

    return null;
  }

  String? nameValidator(String? text) {
    if (text == null || text.isEmpty) {
      return null;
    }

    if (text.length < 2 || text.length > 20) {
      return 'Введите свое имя';
    }

    return null;
  }

  String? surnameValidator(String? text) {
    if (text == null || text.isEmpty) {
      return null;
    }

    if (text.length < 3 || text.length > 20) {
      return 'Введите свою фамилию';
    }

    return null;
  }

  String? patronymicValidator(String? text) {
    if (text == null || text.isEmpty) {
      return null;
    }

    if (text.length < 5 || text.length > 20) {
      return 'Введите свое отчество';
    }

    return null;
  }
}
