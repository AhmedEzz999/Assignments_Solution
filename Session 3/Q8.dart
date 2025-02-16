// Q8: Write a Dart program that checks if a number is within a specified range using logical operators and prints the result.
import 'dart:io';
void main() {
  print('Type a number');
  double userNumber = double.parse(stdin.readLineSync()!);
  if (userNumber > 10 && userNumber < 20)
  {
    print ('This number is in the range.');
  }
  else
    {
    print ('This number is not in the range.');
  }
}