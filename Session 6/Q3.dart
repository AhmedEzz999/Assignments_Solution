// Q3: Write a function that determines if a given year is a leap year.
// A year is a leap year if it is divisible by 4 but not divisible by 100, except if it is also divisible by 400.
import 'dart:io';

void main() {
  print('Type the year');
  int year = int.parse(stdin.readLineSync()!);
  leapYear(year);
}

void leapYear (int year) {
  if ((year % 4 == 0) && (year % 100 != 0)) {
    print('Year $year is a leap year.');
  }

  else if (year % 400 == 0) {
    print('Year $year is a leap year.');
  }
  
  else {
    print('Year $year is not a leap year.');
  }
}