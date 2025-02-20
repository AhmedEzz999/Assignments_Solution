// Q8: Write a function `getDayType(String day)` that:
// Uses a switch case to return "Weekend" if the day is "Saturday" or "Sunday".
// Returns "Weekday" otherwise.
// If the input is invalid, return "Invalid day".
// Call the function inside `main()` and print the result.
import 'dart:io';

void main() {
  print('Type a day');
  String day = stdin.readLineSync()!;
  getDayType(day);
}

void getDayType(String day) {
  switch (day) {
    case 'Saturday' || 'Sunday':
    print('Weekend');
    break;
    
    case 'Monday' || 'Tuesday' || 'Wednesday' || 'Thursday' || 'Friday':
    print('Weekday');
    break;
    
    default:
    print('Invalid day');
  }
}