// Q7: Write a function that takes a string as input and returns the string reversed.
// Example: reverseString('hello') -> 'olleh'
import 'dart:io';

void main() {
  print('Type any text to reverse.');
  String userText = stdin.readLineSync()!;
  print(reverseText(userText));
}

String reverseText (String text) {
  String reverseCharacters = '';
  for (int i = text.length-1; i >= 0; i--) {
    reverseCharacters += text[i];
  }
  return reverseCharacters;
}