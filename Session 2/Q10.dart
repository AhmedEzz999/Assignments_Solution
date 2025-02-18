// Q10: Create a nullable integer variable score but do not assign it a value.
// Print score if it has a value, otherwise print 'No score'.
// Try assigning a value to score and run the code again to see the change.
void main() {
  // ternary operator (condition ? trueValue : falseValue) as a shorthand for if-else statements.
  int? score;
  bool  scoreValue = score != null;
  print(scoreValue ? '$score' : 'No score');
  score = 15;
  scoreValue = score != null;
  print(scoreValue ? '$score' : 'No score');

  // Using if condition
  
  // if (scoreValue)
  // {
  //   print('$score');
  // }
  // else
  // {
  //   print('No score');
  // }
  // score = 15;
  // scoreValue = score != null;
  // if (scoreValue)
  // {
  //   print('$score');
  // }
  // else
  // {
  //   print('No score');
  // }
}