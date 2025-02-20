// Q6: Create a class `Person` with the following attributes:
// `String name`
// `int? age` (nullable)
// `bool isStudent` (default is false)
// Implement: A constructor that initializes `name` and `age`.
// A method `displayInfo()` that prints the person's details.
// In `main()`, create an instance of `Person` and call `displayInfo()`.
void main() {
  Person Ahmed = Person('Ahmed', 25);
  Ahmed.displayInfo();
}

class Person {
  String? name;
  int? age;
  bool isStudent = false;
  Person(String name, int age) {
    this.name = name;
    this.age = age;
  }
  void displayInfo() {
    print(name);
    print(age);
  }
}