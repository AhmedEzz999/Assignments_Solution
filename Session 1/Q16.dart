// Q16: Write a Dart code snippet that demonstrates the use of an arithmetic operator to calculate the remainder of dividing 10 by 3.

/* I want to make a reminder function (%) using the arithmetic operators
  it was a challenge for me, especially I don't know much about Dart
*/

/* This function I take it from Stack Overflow
  It checks if double number has decimal numbers or not
*/
bool isInteger(num value) =>  
value is int || value == value.roundToDouble();
void main() {
  num number1 = 10;
  num number2 = 3;
  num result = number1 / number2;
  bool reminderStatus = isInteger(result);  // first I want to check if the result has decimal numbers or not
  int reminder = 0;  // I initialize a variable called reminder and it starts from zero
  // I write if condition and if the result has decimal numbers, it will run
  if (reminderStatus == false) {
    while (reminderStatus == false) {  // reminder will increase until result has no decimal numbers
    number1--;
    result = number1 / number2;
    reminder++;
    reminderStatus = isInteger(result);
    }
    print(reminder);
  }
    // I write else condition and if the result has no decimal numbers, it will run.
  else {
  print(reminder);  // The reminder in this case is the initial value zero.
  }
}