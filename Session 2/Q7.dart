// Q7: Create an integer variable marks.
// If marks is 70 or higher, print 'Passed', otherwise print 'Failed'.
import 'dart:io';
void main() {
  print('Type your mark');
  String? userMarks = stdin.readLineSync();
  int marks = int.parse(userMarks!);
  if (marks >= 70)
  {
    print('Passed');
  }
  else{
    print('Failed');
  }
}