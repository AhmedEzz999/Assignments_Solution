// Q4: Use Map and List to create a program that stores weather data for different cities (temperature, humidity, etc.).
// Write a function that can retrieve and print weather details using a city name.
import 'dart:io';

void main() {
  Map<String, List> weatherData = {
    'Cairo': [50, 70],
    'Giza': [33, 80],
    'Alexandria': [23, 25],
  };
  print('Type a city');
  String cityName = stdin.readLineSync()!;
  switch (cityName) {
    case 'Cairo':
      weather(weatherData, cityName);
    case 'Giza':
      weather(weatherData, cityName);
    case 'Alexandria':
      weather(weatherData, cityName);
    default:
      {
        print('Error');
      }
  }
}

void weather(Map<String, List> weatherData, String cityName) {
  print(weatherData[cityName]);
}