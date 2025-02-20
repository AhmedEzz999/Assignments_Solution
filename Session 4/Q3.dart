// Q3: Create a list of numbers. Iterate over the list and:
// If a number is even, print "Even: <number>".
// If a number is odd, print "Odd: <number>".
void main() {
  List ages = [10, 12, 15, 20, 25, 27];
  for (var element in ages) {
    if (element % 2 == 0) {
      print('Even: $element');
    }
    else {
      print('Odd: $element');
    }
  }
}