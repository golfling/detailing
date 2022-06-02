import 'package:detailing/presentation/widgets/button_with_text.dart';
import 'package:flutter/material.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
        children: [
          Center(
            child: AspectRatio(
              aspectRatio: 4 / 3,
              child: Image.asset(
                // 'https://live.staticflickr.com/7419/12941163675_accae2367f_b.jpg',
                'assets/images/main.png',
                fit: BoxFit.cover,
              ),
            ),
          ),
          Positioned(
            bottom: 20,
            right: 0,
            left: 0,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 300,
                  child: ButtonWithText(
                    mainAxisAlignment: MainAxisAlignment.center,
                    text: const Text('Войти'),
                    onPressed: () {
                      Navigator.of(context).pushNamed('/sing_in');
                    },
                  ),
                ),
                const SizedBox(height: 10),
                SizedBox(
                  width: 300,
                  child: ButtonWithText(
                    text: const Text('Регистрация'),
                    mainAxisAlignment: MainAxisAlignment.center,
                    onPressed: () {
                      Navigator.of(context).pushNamed('/sing_up');
                    },
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
