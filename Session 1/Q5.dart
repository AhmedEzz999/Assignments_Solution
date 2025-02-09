// Q5: What is the difference between var and dynamic in Dart? Provide an example of each.
void main() {
  // dynamic
  /* dynamic is a data type that allows to store any value
  from any data type to a variable you declare. So that
  we consider it a weak data type.
  dynamic compiles at runtime.
  We use it if we don't know type of data.
  */
  dynamic name = 'Ahmed';
  name = 10;
  name = true;
  print (name);  // Output is true
  // var
  /* var is a keyword. You can initialize any type of data with var
  and it replaces with the exact type of data depend on the value
  of the variable.
  Once you initialize any variable using var, you can't change
  the data type of the variable.
  It runs in compile-time.
  if you declare any variable using var, var will replace with dynamic
  because var can't identify the data type of the variable.
  */
  var customerName = 'Mohamed';
  print (customerName);  // Output is Mohamed
  var gpa = 2;
  print(gpa);  // Output is 2
  //gpa = 'Ezz';  Error: A value of type 'String' can't be assigned to a variable of type 'int'.
  var rank;
  rank = 10;
  rank = 3.5;
  rank = false;
  print(rank);  // Output is false
}