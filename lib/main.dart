import 'package:firstmockup/money_page.dart';
import 'package:firstmockup/theme/app_color.dart';
import 'package:firstmockup/tinder_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(AppWidget());
}

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MenuPage(),
    );
  }
}

class MenuPage extends StatelessWidget {
  const MenuPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Exercício 1')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              'Excolha o mockup:',
              style: TextStyle(fontSize: 20),
            ),
            const SizedBox(
              height: 25,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  primary: AppColor.tinderBackgroundFinish),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const TinderPage()),
                );
              },
              child: const Text('Tinder'),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(primary: AppColor.button),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const MoneyPage()),
                );
              },
              child: const Text('Money'),
            )
          ],
        ),
      ),
    );
  }
}
