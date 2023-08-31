import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(colors: [Colors.purple, Colors.blue]),
          ),
          child: const Center(
            child: Text(
              'Hello Kush !! Welcome to Netrin Sports technology',
              style: TextStyle(
                  fontSize: 30,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ),
    ),
  );
}
