// Q2: Write a function that converts temperature from Celsius to Fahrenheit and vice versa.
// Accept temperature value and unit ('C' for Celsius, 'F' for Fahrenheit) as inputs.
// Convert accordingly and return the result.
import 'dart:io';

void main() {
  print ('Type the temperature.');
  double temperature = double.parse(stdin.readLineSync()!);
  print ('Type F to convert C → F');
  print ('Type C to convert F → C');
  String temperatureUnit = stdin.readLineSync()!;
  convertTemperature(temperature, temperatureUnit);
}

void convertTemperature (double temperature, String temperatureUnit) {
  switch (temperatureUnit) {
    case 'F' || 'f':
    double fahrenheit = (temperature * (9/5))+ 32;
    print(fahrenheit);

    case 'C' || 'c':
    double celsius  = (temperature - 32) * (5/9);
    print(celsius);

    default: print('Invalid Character');
  }
}