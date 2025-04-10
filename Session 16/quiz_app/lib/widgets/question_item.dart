import 'package:flutter/material.dart';
import 'package:quiz_app/models/question_model.dart';
import 'package:quiz_app/models/questions_list.dart';
import 'package:quiz_app/styles/app_colors.dart';

  class QuestionItem extends StatefulWidget {
  const QuestionItem({super.key, required this.index});
  final int index;
  @override
  State<QuestionItem> createState() => _QuestionItemState();
}

class _QuestionItemState extends State<QuestionItem> {


  @override
  Widget build(BuildContext context) {
  final QuestionModel question = questionsList[widget.index];
  if (question.isRadio) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(question.question, style: TextStyle(fontSize: 32, color: Colors.white)),
        SizedBox(height: 18),
        ...question.choices.map((choice) {
          return RadioListTile(
            title: Text(choice),
            value: choice,
            groupValue: question.userAnswer.isNotEmpty ? question.userAnswer.first : null,
            onChanged: (newValue) {
              // Set userAnswers to contain only one selected value
              question.userAnswer = [newValue!];
              setState(() {});
            },
          );
        }),
      ],
    );
  } else {
    // Build Checkboxes
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(question.question, style: TextStyle(fontSize: 32, color: Colors.white)),
        SizedBox(height: 18),
        ...question.choices.map((choice) {
          bool isSelected = question.userAnswer.contains(choice);
          return Container(
            margin: EdgeInsets.symmetric(vertical: 10),
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 5),
            decoration: BoxDecoration(
              color: isSelected ? AppColors.answerCheckedBackgroundColor : AppColors.answerUncheckedBackgroundColor,
              borderRadius: BorderRadius.circular(20)
            ),
            child: CheckboxListTile(
              controlAffinity: ListTileControlAffinity.leading,
              contentPadding: EdgeInsets.zero,
              title: Text(choice, style: TextStyle(fontSize: 22, color: AppColors.primary)),
              value: isSelected,
              onChanged: (checked) {
                if (checked == true) {
                  question.userAnswer.add(choice);
                } else {
                  question.userAnswer.remove(choice);
                }
                setState(() {});
              },
            ),
          );
        }),
      ],
    );
  }
  }
}