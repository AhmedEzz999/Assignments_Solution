import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:quiz_app/styles/app_colors.dart';
import 'package:quiz_app/styles/app_text_styles.dart';

class QuestionHeader extends StatelessWidget {
  const QuestionHeader({super.key, required this.index});
  final int index;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      margin: EdgeInsets.only(bottom: 25),
      decoration: BoxDecoration(
        color: AppColors.questionNumberColor,
        borderRadius: BorderRadius.circular(40)
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          SvgPicture.asset(
            'assets/images/question $index.svg',
            width: 30,
          ),
          SizedBox(width: 15),
          Text(
            'Question $index',
            style: AppFonts.text24
          )
        ],
      ),
    );
  }
}