import 'package:flutter/material.dart';
import 'dart:math';

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  var activeImageUrl = 'assets/dice-1.png';
  double turns = 0.0;

  void rollDice() {
    var roll = Random().nextInt(6) + 1;
    setState(() {
      turns += 1 / 10;
      activeImageUrl = 'assets/dice-$roll.png';
    });
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        AnimatedRotation(
          turns: turns,
          duration: const Duration(seconds: 1),
          child: Image.asset(
            activeImageUrl,
            width: 200,
          ),
        ),
        const SizedBox(height: 30),
        ElevatedButton(
          onPressed: rollDice,
          style: TextButton.styleFrom(
              backgroundColor: Colors.black38,
              padding: const EdgeInsets.fromLTRB(10, 20, 10, 20)),
          child: const Text(
            "Lets Roll Dice !!",
            style: TextStyle(fontSize: 20),
          ),
        ),
      ],
    );
  }
}
