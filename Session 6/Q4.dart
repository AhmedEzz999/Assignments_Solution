// Q4: Write a function that takes two numbers (start, end) and returns a list of all prime numbers between them.
// Ensure that the function correctly identifies prime numbers and handles edge cases where start is greater than end.
import 'dart:io';

void main() {
  print('Type first number');
  int number1 = int.parse(stdin.readLineSync()!);
  print('Type second number');
  int number2 = int.parse(stdin.readLineSync()!);
  print(primeNumbers(number1, number2));
}

List<int> primeNumbers (int start, int end) {
  start = start.clamp(1, double.infinity).toInt();  // To make sure that user can't type a negative number
  end = end.clamp(1, double.infinity).toInt();
  if (start > end) {
    (start, end) = (end, start);  // To make sure that start always is greater than end.
  }
  List<int> prime = [];

  do {
    List<int> isPrime = [];
    for (int j = 1; j <= start; j++) {
      if (start % j == 0) {
        isPrime.add(j);
      }
    }
    if (isPrime.length == 2) {
      prime.add(start);
    }
    start++;
  } while (start != end);
  return prime;
}