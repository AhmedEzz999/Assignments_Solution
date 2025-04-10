import 'package:quiz_app/models/question_model.dart';

final List<QuestionModel> questionsList = [
  QuestionModel(
    isRadio: true,
    question: 'How would you describe your level of satisfaction with the healthcare system?',
    choices: ['Strongly satisfied', 'Satisfied', 'Neutral', 'Not satisfied'],
    correctAnswer: ['Satisfied'],
  ),
  QuestionModel(
    isRadio: false,
    question: "What vitamins do you take?",
    choices: ["Vitamin D3", "Vitamin B", "Zinc", "Magnesium"],
    correctAnswer: ["Vitamin D3", "Zinc"],
  ),
  QuestionModel(
    isRadio: false,
    question: 'How would you describe your level of satisfaction with the healthcare system?',
    choices: ['Strongly satisfied', 'Satisfied', 'Neutral', 'Not satisfied'],
    correctAnswer: ['Satisfied'],
  ),
];