// Q1: Create a Dart program that takes two numbers as input and performs addition, subtraction,
// multiplication, and division using variables, arithmetic operators, and functions. Also, include
// optional parameters for different operations (e.g., addition of multiple numbers).
import 'dart:io';

void main() {
  print('Type First number');
  double num1 = double.parse(stdin.readLineSync()!);
  print('Type The second number');
  double num2 = double.parse(stdin.readLineSync()!);
  print('Choose the operation you want');
  String operation = stdin.readLineSync()!;
  switch (operation) {
    case '+':
      print(addition(num2, num1));
    case '-':
      print(Subtraction(num2, num1));
    case '*':
      print(multiple(num2, num1));
    case '/':
      print(Division(num2, num1));
    default:
      {
        print('Error selecting operation ');
      }
  }
}

double addition(double num1, double num2) {
  double result = num1 + num2;
  return result;
}

double multiple(double num1, double num2) {
  double result = num1 * num2;
  return result;
}

double Subtraction(double num1, double num2) {
  double result = num1 - num2;
  return result;
}

String Division(
  double num1,
  double num2,
) {
  double result;
  if (num2 != 0) {
    result = num1 / num2;
    return result.toString();
  } else {
    return 'Invalid Operation';
  }
}