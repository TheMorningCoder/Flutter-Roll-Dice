import 'dart:math';

import 'package:flutter/material.dart';

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});
  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  int diceNumber = 1;
  Random random = Random();
  void rollDice() {
    setState(() {
      diceNumber = random.nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          width: 150,
          height: 150,
          child: Image.asset(
            "assets/images/dice$diceNumber.png",
            fit: BoxFit.cover,
          ),
        ),
        SizedBox(height: 20),
        TextButton(
          onPressed: rollDice,
          style: ButtonStyle(
            minimumSize: WidgetStateProperty.all(
              Size(150, 10),
            ),
            elevation: WidgetStateProperty.all(4),
            shape: WidgetStateProperty.all(
              RoundedRectangleBorder(
                side: BorderSide(
                  color: Colors.white,
                  width: 2,
                ),
                borderRadius: BorderRadius.circular(5), // Rounded corners
              ),
            ),
            shadowColor: WidgetStateProperty.all(Colors.black), // Shadow color
          ),
          child: Text(
            "Roll",
            style: TextStyle(fontSize: 20, color: Colors.black),
          ),
        ),
      ],
    );
  }
}
