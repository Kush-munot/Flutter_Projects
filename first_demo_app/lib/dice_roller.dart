import 'package:flutter/material.dart';

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  var activeImageUrl = 'assets/dice-1.png';

  void rollDice() {
    setState(() {
      activeImageUrl = 'assets/dice-4.png';
    });
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          activeImageUrl,
          width: 200,
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
            ))
      ],
    );
  }
}
