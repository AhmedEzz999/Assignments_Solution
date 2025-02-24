// Q8: Write a function that takes a list of numbers and returns the sum of all elements.
// Example: sumList([1, 2, 3, 4, 5]) -> 15
void main() {
  List<int> numbers = [2, 5, 8, 13, 15];
  print(sumList(numbers));
}

int sumList (List<int> numbers) {
  int sumNumbers = 0;
  for (var element in numbers) {
    sumNumbers += element;
  }
  return sumNumbers;
}