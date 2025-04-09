import 'package:flutter/material.dart';
import 'package:quiz_app/models/question_model.dart';
import 'package:flutter_svg/svg.dart';
import 'package:quiz_app/styles/app_colors.dart';
import 'package:quiz_app/styles/app_text_styles.dart';

class QuestionHeader extends StatelessWidget {
  const QuestionHeader({super.key, required this.question});
  final QuestionModel question;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      margin: EdgeInsets.only(bottom: 15),
      decoration: BoxDecoration(
        color: AppColors.questionNumberColor,
        borderRadius: BorderRadius.circular(40)
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          SvgPicture.asset(
            question.headerImage,
            width: 30,
          ),
          SizedBox(
            width: 15,
          ),
          Text(
            'Question ${question.questionNumber}',
            style: AppFonts.text24
          )
        ],
      ),
    );
  }
}