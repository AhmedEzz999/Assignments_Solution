// Q4: Create a Dart program that:
// Declares a `Map<String, int>` where keys are fruit names and values are their prices.
// Implements a function `getPrice(String fruitName)` that returns the price of a given fruit.
// If the fruit is not found, return -1.
// Call the function inside `main()` and print the result.
import 'dart:io';

void main() {
  Map<String, int> fruits = {
    'Apple': 20,
    'Banana': 30,
    'Kiwi': 40,
    'Mango': 50
  };
  print('Type fruit name');
  String fruitName = stdin.readLineSync()!;
  print(getPrice(fruitName, fruits));
}

int getPrice(String fruitName, Map<String, int> fruits) {
  if (fruits.containsKey(fruitName)) {
  int? price = fruits[fruitName];
  return price!;
  }
  else {
    return -1;
  }
}