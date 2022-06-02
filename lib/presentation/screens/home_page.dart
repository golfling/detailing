import 'package:detailing/presentation/screens/order.dart';
import 'package:detailing/presentation/widgets/button_with_text.dart';
import 'package:detailing/presentation/widgets/drawer_main.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Главная'),),
      drawer: const AppDrawer(),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
        child: Column(
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
            const SizedBox(height: 100),
            ButtonWithText(
              text: const Text('Записаться'),
              mainAxisAlignment: MainAxisAlignment.center,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const OrderScreen()),
                );
              },
            ),
            const SizedBox(height: 16),
            ButtonWithText(
              text: const Text('История записей'),
              mainAxisAlignment: MainAxisAlignment.center,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const OrderScreen()),
                );
              },
            ),
            const SizedBox(height: 16),
            ButtonWithText(
              text: const Text('Посмотреть примеры работ'),
              mainAxisAlignment: MainAxisAlignment.center,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const OrderScreen()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
