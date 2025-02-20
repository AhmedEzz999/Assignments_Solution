// Q5: Create a class with a few properties and methods.
// Instantiate the class and use the dot operator to access and print its properties and methods.
void main() {
  car myCar = car();
  myCar.make = 'Germany';
  myCar.model = 'BMW X6';
  myCar.ShowCarDetails();
}

class car {
  String? make;
  String? model;
  void ShowCarDetails() {
    print('the car made in $make and the model is $model');
  }
}