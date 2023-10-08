import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {
  const AnswerButton({required this.ansText, required this.onTap, super.key});

  final String ansText;
  final void Function() onTap;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      child: ElevatedButton(
        onPressed: onTap,
        style: ElevatedButton.styleFrom(
            backgroundColor: Colors.purpleAccent,
            foregroundColor: Colors.white,
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 40),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(40),
            )),
        child: Text(
          ansText,
          textAlign: TextAlign.center,
          style: const TextStyle(fontSize: 17, ),
        ),
      ),
    );
  }
}
