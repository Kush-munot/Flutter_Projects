import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: const Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text("You answered X out of Y questions Correctly."),
            SizedBox(height: 30,),
            // Scrollable(viewportBuilder: viewportBuilder)
            SizedBox(height: 30),
            TextButton(onPressed: (){}, child: Text('Restart the Quiz'))

          ],
        ),
      ),
    );
  }
}
