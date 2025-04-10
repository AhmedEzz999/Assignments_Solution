import 'package:flutter/material.dart';
import 'package:quiz_app/widgets/buttons.dart';
import 'package:quiz_app/widgets/question_header.dart';
import 'package:quiz_app/widgets/question_item.dart';

class QuestionView extends StatefulWidget {
  const QuestionView({super.key});

  @override
  State<QuestionView> createState() => _QuestionViewState();
}

class _QuestionViewState extends State<QuestionView> {
  final int index = 2;
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
            SizedBox(height: 70),
            QuestionHeader(index: index),
            QuestionItem(index: index),
            SizedBox(height: 40),
            Buttons()
          ],
        ),
      ),
    );
  }
}