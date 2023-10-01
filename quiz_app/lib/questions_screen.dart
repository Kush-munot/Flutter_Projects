import 'package:flutter/material.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key});

  @override
  State<QuestionsScreen> createState() {
    return _QuestionsScreenState();
  }
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  @override
  Widget build(context) {
    return SizedBox(
      width: double.infinity,
      child: const Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Question"),
          SizedBox(height: 30),
          ElevatedButton(onPressed: () {}, child: Text("Option1")),
          ElevatedButton(onPressed: () {}, child: Text("Option2")),
          ElevatedButton(onPressed: () {}, child: Text("Option3")),
          ElevatedButton(onPressed: () {}, child: Text("Option4")),
        ],
      ),
    );
  }
}
