// Q13:What will be the output of this code snippet? Explain your answer: ```dart void main() { int x = 5; int y = x + 2 * 3; print(y); } ```
void main() {
  // Output is 11
  /*
  in Math operation there is specific order
  operation between brackets done first
  then multiplication and division done from left to right
  then addition and Subtraction done from left to right
  */
  int x = 5;
  int y = x + 2 * 3;  // 2*3 = 6 → 6 + 5 = 11
  print(y);          // Output is 11
}