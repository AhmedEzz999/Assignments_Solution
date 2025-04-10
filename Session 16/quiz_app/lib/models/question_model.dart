class QuestionModel {
  final bool isRadio;
  final String question;
  final List<String> choices;
  List<String> userAnswer = [];
  final List<String> correctAnswer;
  static int score = 0;


  QuestionModel ({
    required this.isRadio,
    required this.question,
    required this.choices,
    required this.correctAnswer
  });

  bool checkAnswer () {
    if (isRadio) {
      if (userAnswer.first == correctAnswer.first ) {
        return true;
      }
      else {
        return false;
      }
    }
    else {
      if (userAnswer.length == correctAnswer.length) {
        final userSet = userAnswer.toSet();
        final correctSet = correctAnswer.toSet();
        return userSet.containsAll(correctSet);
      }
      else {
        return false;
      }
    }
  }

  int scoreResult () {
    if (checkAnswer()) {
      score++;
    }
    return score;
  }
}