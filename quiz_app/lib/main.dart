import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.purple,
        body: Column(
          children: [
            Center(
              child: Image(
                image: NetworkImage('https://i.imgur.com/CKpyPSZ.png'),
                height: 240,
                width: 240,
              ),
            )
          ],
        ),
      ),
    ),
  );
}
