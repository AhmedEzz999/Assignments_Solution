import 'package:quiz_app/models/question_model.dart';

List<QuestionModel> questionsList = [
  QuestionModel(
    questionNumber: 1,
    headerImage: 'assets/images/question 1.svg',
    question: 'How would you describe your level of satisfaction with the healthcare system?',
    choices: [
      'Strongly satisfied',
      'Satisfied',
      'Neutral',
      'Not satisfied'
    ],
    correctAnswer: 'Satisfied'
  )
];