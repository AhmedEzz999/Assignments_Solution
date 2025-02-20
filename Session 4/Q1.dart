// Q1: Create a Dart program that declares and initializes the following variables:
// Your name (String)
// Your age (int)
// Your height (double)
// Whether you are a student (bool)
// Then, print these values using a single print statement.
void main() {
  String name = 'Ahmed';
  int age = 25;
  double height = 1.86;
  bool isStudent = false;
  String isStudentString = isStudent.toString();
  if (isStudent) {
    isStudentString = '';
  }
  else {
    isStudentString = 'not';
  }
  isStudent.toString();
  print('My name is $name, I am $age years old, my height is $height m, and I am $isStudentString a student.');
}