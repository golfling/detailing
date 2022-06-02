import 'package:detailing/features/firebase/cubit/firebase_cubit.dart';
import 'package:detailing/presentation/widgets/appbar_title_with_icon.dart';
import 'package:detailing/presentation/widgets/text_button.dart';
import 'package:detailing/presentation/widgets/textformfield_default.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SingIn extends StatefulWidget {
  const SingIn({Key? key}) : super(key: key);

  @override
  _SingInState createState() => _SingInState();
}

class _SingInState extends State<SingIn> {
  bool hidePassword = true;
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const AppBarTitleWithIcon(
          text: Text('Вход'),
        ),
        elevation: 1,
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            SizedBox(height: MediaQuery.of(context).size.height * 0.05),
            DefaultAppTextFormField(
              labelText: 'Email',
              textEditingController: _emailController,
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
            const SizedBox(height: 20),
            Align(
              alignment: Alignment.centerRight,
              child: AppTextButton(
                text: const Text('Войти'),
                onTap: () {
                  BlocProvider.of<FirebaseCubit>(context, listen: false).signIn(
                      _emailController.text.trim(),
                      _passwordController.text.trim());
                  Navigator.of(context).pop();
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
