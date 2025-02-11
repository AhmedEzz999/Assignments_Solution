// Q3: Create a set named uniqueNumbers with the values {10, 20, 30, 40}.
// Print the length of uniqueNumbers.
// Check if the number 20 is present in the set and print the result.
void main() {
  Set<int> uniqueNumbers = {10, 20, 30, 40};
  print(uniqueNumbers.length);
  // Number 20 is only assigned to the set one time
  // So the number 20 is present in the set
  print(uniqueNumbers);
}