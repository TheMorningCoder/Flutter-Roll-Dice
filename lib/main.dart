import 'package:dice/diceroller.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: SafeArea(
          child: Scaffold(
            body: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    Colors.black,
                    Colors.grey,
                    Colors.white,
                    Colors.grey,
                    Colors.black,
                  ],
                ),
              ),
              child: Center(
                child: DiceRoller(),
              ),
            ),
          ),
        ));
  }
}
