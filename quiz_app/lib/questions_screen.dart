import 'package:flutter/material.dart';
import 'package:quiz_app/answer_button.dart';
import 'package:quiz_app/data/questions.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key});

  @override
  State<QuestionsScreen> createState() {
    return _QuestionsScreenState();
  }
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  final currQuestion = questions[0];

  @override
  Widget build(context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            currQuestion.text,
            style: const TextStyle(color: Colors.white, fontSize: 20),
          ),
          const SizedBox(height: 30),
          ...currQuestion.answers.map((item) {
            return (Column(
              children: [
                AnswerButton(ansText: item, onTap: () {}),
                const SizedBox(height: 20),
              ],
            ));
          }),
        ],
      ),
    );
  }
}
