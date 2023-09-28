import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

  @override
  Widget build(context) {
    return Center(
      child: Column(
        children: [
          const SizedBox(height: 100),
          const Opacity(
            opacity: 0.4,
            child: Image(
              image: NetworkImage('https://i.imgur.com/CKpyPSZ.png'),
              height: 240,
              width: 240,
            ),
          ),
          const SizedBox(height: 30),
          const Text(
            "Learn Flutter the Fun Way !!",
            style: TextStyle(
              fontSize: 25,
              color: Colors.white,
              fontWeight: FontWeight.w300,
            ),
          ),
          const SizedBox(height: 30),
          OutlinedButton.icon(
              style: OutlinedButton.styleFrom(
                  backgroundColor: Colors.transparent,
                  foregroundColor: Colors.white),
              onPressed: () {},
              icon: const Icon(Icons.arrow_right_alt),
              label: const Text(
                "Start Quiz",
                style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.w300,
                ),
              )),
        ],
      ),
    );
  }
}
