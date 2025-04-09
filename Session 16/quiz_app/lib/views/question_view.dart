import 'package:flutter/material.dart';
import 'package:quiz_app/models/questions_list.dart';
import 'package:quiz_app/widgets/question_section.dart';

class QuestionView extends StatefulWidget {
  const QuestionView({super.key});
  final int index = 0;
  @override
  State<QuestionView> createState() => _QuestionViewState();
}

class _QuestionViewState extends State<QuestionView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        padding: EdgeInsets.all(15),
        decoration: BoxDecoration(
            gradient: RadialGradient(
            colors: [
              Color(0xFF5E3B7F),
              Color(0xFF1C1B33)
            ],
            radius: 1.5,
            ),
          ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 50,
            ),
            QuestionSection(question: questionsList[0]),
          ],
        ),
      ),
    );
  }
}