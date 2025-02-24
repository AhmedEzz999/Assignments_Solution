// Q6: Write a function that counts the number of words in a given sentence.
// Words are separated by spaces, and the function should ignore extra spaces.
import 'dart:io';

void main() {
  print('Type a sentence');
  String userText = stdin.readLineSync()!;
  String textWithoutSpaces = removeExtraSpaces(userText);
  print(countWords(textWithoutSpaces));
}

// Counts the number of words in a given sentence.
int countWords (String text) {
  List<String> words = text.split('');
  return words.length;
}

// Replace multiple spaces with a single space.
String removeExtraSpaces(String text) {
  return text.replaceAll(RegExp(r'\s+'), ' ').trim();
}