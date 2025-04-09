import 'package:flutter/material.dart';
import 'package:quiz_app/models/question_model.dart';
import 'package:quiz_app/widgets/question_header.dart';

class QuestionSection extends StatelessWidget {
  const QuestionSection({super.key, required this.question});
  final QuestionModel question;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        QuestionHeader(question: question),
        Text(
          question.question,
          style: TextStyle(
            fontSize: 32,
            color: Colors.white
          ),
        )
      ],
    );
  }
}