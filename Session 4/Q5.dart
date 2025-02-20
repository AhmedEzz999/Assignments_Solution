// Q5: Write a function `uniqueNames(List<String> names)` that:
// Accepts a list of names.
// Returns a Set containing only unique names.
// Call the function inside `main()` and print the result.
void main() {
  List<String> names = ['Ahmed', 'Mohamed', 'Omar', 'Ahmed', 'Shady'];
  print(uniqueNames(names));
}

Set uniqueNames(List<String> names) {
  Set uniqueNames = names.toSet();
  return uniqueNames;
}