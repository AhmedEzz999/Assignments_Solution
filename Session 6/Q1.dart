// Q1: Write a function that takes two numbers and an operator (+, -, *, /) as input and returns the result.
// Handle cases where division by zero might occur.
import 'dart:io';

void main() {
  print ('Type first number.');
  double number1 = double.parse(stdin.readLineSync()!);
  print ('Type second number.');
  double number2 = double.parse(stdin.readLineSync()!);
  print ('Choose your operation:  +   -   *   /');
  String mathOperation = stdin.readLineSync()!;
  print('The result is');

  switch (mathOperation) {
    case '+' : Addition(number1, number2);
    break;

    case '-' : Subtraction(number1, number2);
    break;

    case '*' : Multiply(number1, number2);
    break;

    case '/' : Divide(number1, number2);
    break;

    default: print('Invalid character!');
  }
}

void Addition (double number1, double number2) {
  double result = number1 + number2;
  print(result);
}

void Subtraction (double number1, double number2) {
  double result = number1 - number2;
  print(result);
}

void Multiply (double number1, double number2) {
  double result = number1 * number2;
  print(result);
}

void Divide (double number1, double number2) {
  if (number2 == 0) {
    print("Can't divide by zero");
  }
  else {
    double result = number1 / number2;
    print(result.toStringAsPrecision(3));
  }
}