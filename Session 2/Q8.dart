// Q8: Create an integer variable temperature.
// If temperature is above 30, print 'It's hot!'.
// If it's between 15 and 30, print 'It's warm.'.
// Otherwise, print 'It's cold.'.
import 'dart:io';
void main() {
  print('Type weather temperature');
  String? temperatureInput = stdin.readLineSync();
  int temperature = int.parse(temperatureInput!);
  if (temperature > 30)
  {
    print ("It's hot !");
  }
  else if (temperature <= 30 && temperature >= 15)
  {
    print ("It's warm.");
  }
  else
  {
    print ("It's cold.");
  }
}