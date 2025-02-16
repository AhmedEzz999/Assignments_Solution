// Q6: Create a map representing a student with keys for name, age, and grade.
// Add, update, and remove entries from the map, printing the map after each operation.
// Iterate over the map and print each key-value pair.
void main() {
  Map<String, String> student =
  {
    'name' : 'Ahmed',
    'age' : '25',
    'grade' : 'B'
  };
  // Add city to the Map.
  student['city'] = 'Giza';
  print(student);
    // Update grade in the Map.
  student['grade'] = 'A+';
  print(student);
    // Remove age from the Map.
  student.remove('age');
  print(student);
  // Iterate over the map using for each loop.
  student.forEach((key, value)
  {
    print('$key: $value');
  });
}