// Q17: If you need a variable that can hold any type of value and may change during execution, which data type would you use? Write a code example to show this.
void main() {
  // I'll use dynamic data type.
  dynamic name = 'Ahmed';
  name = 10;
  name = true;
  print (name);  // Output is true
}