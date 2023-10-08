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
  var currQuestionIndex = 0;
  void answerQuestion() {
    setState(() {
      currQuestionIndex += 1;
    });
  }

  @override
  Widget build(context) {
    final currQuestion = questions[currQuestionIndex];
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              currQuestion.text,
              textAlign: TextAlign.center,
              style: const TextStyle(color: Colors.white, fontSize: 20),
            ),
            const SizedBox(height: 30),
            ...currQuestion.getShuffledAnswers().map((item) {
              return AnswerButton(
                ansText: item,
                onTap: answerQuestion,
              );
            }),
          ],
        ),
      ),
    );
  }
}
