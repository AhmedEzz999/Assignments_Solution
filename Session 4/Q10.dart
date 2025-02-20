// Q10: Create a list of 5 words.
// Iterate through the list using a for-each loop.
// Convert each word to uppercase.
// Print each word in uppercase.
void main() {
  List<String> names = ['Ahmed', 'Mohamed', 'Omar', 'Shady', 'Ezz'];
  names.forEach((element) {
    print(element.toUpperCase());
  });
}