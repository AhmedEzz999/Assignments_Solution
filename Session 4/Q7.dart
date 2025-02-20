// Q7: Write a program that prints the numbers 1 to 20 but:
// If a number is divisible by 3, print "Fizz".
// If a number is divisible by 5, print "Buzz".
// If a number is divisible by both 3 and 5, print "FizzBuzz".
import 'dart:io';

void main() {
  print('Type a number from 1 to 20');
  int userNumber = int.parse(stdin.readLineSync()!);
  bool dividedBy3 = userNumber % 3 == 0;
  bool dividedBy5 = userNumber % 5 == 0;
  
  if (dividedBy3 && !dividedBy5) {
    print('Fizz');
  }
  
  else if (!dividedBy3 && dividedBy5) {
    print('Buzz');
  }
  if (dividedBy3 && dividedBy5) {
    print('FizzBuzz');
  }
}