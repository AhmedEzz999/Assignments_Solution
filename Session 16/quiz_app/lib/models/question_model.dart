class QuestionModel {
  final int questionNumber;
  final String headerImage;
  final String question;
  final List<String> choices;
  final String? userAnswer;
  final String correctAnswer;
  static int score = 0;


  QuestionModel ({
    required this.questionNumber,
    required this.headerImage,
    required this.question,
    required this.choices,
    this.userAnswer,
    required this.correctAnswer
  });

  bool checkAnswer () {
    if (userAnswer == correctAnswer) {
      return true;
    }
    else {
      return false;
    }
  }

  int scoreResult () {
    checkAnswer() ? score++ : 0;
    return score;
  }
}