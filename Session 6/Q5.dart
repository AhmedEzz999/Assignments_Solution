// Q5: Write a function that takes a sentence as input and returns the longest word in the sentence.
// If multiple words have the same longest length, return the first one that appears.
import 'dart:io';

void main() {
  print('Type your story.');
  String userText = stdin.readLineSync()!;  // Get sentence from the user.

  userText = userText.trim();   // Remove spaces from the beginning and the end of text.
  userText = userText.replaceAll(',', '').replaceAll('.', '')  // Remove punctuation marks from the text.
  .replaceAll('!', '').replaceAll(':', '').replaceAll(';', '')
  .replaceAll('?', '').replaceAll('-', ' ');

  List<String> splitWords = userText.split(' ');
  print(longestLength(splitWords));
}

String longestLength (List<String> sentence) {
  String longestWord = sentence[0];
  for (int i = 0; i < sentence.length-1; i++) {
    if (sentence[i].length < sentence[i+1].length) {
      if (longestWord.length < sentence[i+1].length) {
        longestWord = sentence[i+1];
      }
    }
  }
  return longestWord;
}