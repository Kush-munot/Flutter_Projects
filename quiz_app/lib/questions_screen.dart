import 'package:flutter/material.dart';
import 'package:quiz_app/answer_button.dart';

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
          Text("Question", style: TextStyle(color: Colors.white),),
          SizedBox(height: 30),
          AnswerButton(ansText: "ansText", onTap: (){});
          AnswerButton(ansText: "ansText", onTap: (){});
          AnswerButton(ansText: "ansText", onTap: (){});
          AnswerButton(ansText: "ansText", onTap: (){});
        ],
      ),
    );
  }
}
