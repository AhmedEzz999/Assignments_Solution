// Q7: Create a program that asks the user to input a number and checks if it's positive, negative, or zero using if-else statements.
import 'dart:io';
void main() {
  print('Type a number');
  double userNumber = double.parse(stdin.readLineSync()!);
  if (userNumber > 0)
  {
    print ('This number is positive.');
  }
    else if (userNumber < 0)
  {
    print ('This number is negative.');
  }
    else
  {
    print ('This number is zero.');
  }
}