// Q7: Given this code, identify any errors and explain why they occur: ```dart void main() { String name = "Alice"; name = 123; print(name); } ```
void main() {
  /* There is an error in second statement
  name = 123;
  because name is declared as String data type
  You can't change its type to int data type after that
  You have two solutions to avoid this error
  first solution change data type of name to int in the first statement
  but it will make a logical error
  second solution change the value of second statement to a string.
  */
}