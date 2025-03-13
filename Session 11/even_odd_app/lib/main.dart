import 'package:flutter/material.dart';
import 'sections/even_odd_section.dart';
import 'sections/counter_section.dart';
import 'sections/change_size_and_color_section.dart';
import 'sections/action_buttons.dart';

void main() {
  runApp(EvenOddApp());
}
class EvenOddApp extends StatefulWidget {
  @override
  State<EvenOddApp> createState() => _EvenOddAppState();
}

class _EvenOddAppState extends State<EvenOddApp> {
  int number = 19;
  bool isEven = false;
  double fontSize = 40;
  MaterialColor backgroundColor = Colors.purple;

  @override
  void initState() {
    super.initState();
    isEven = number % 2 == 0;
  }

  void numberChanged (int newNumber) {
    setState(() {
      number = newNumber;
      isEven = (number % 2 == 0);
    });
  }

  void fontChanged (double newFontSize) {
    setState(() {
      fontSize = newFontSize;
    });
  }

  void colorChanged (MaterialColor newColor) {
    setState(() {
      backgroundColor = newColor;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [backgroundColor, Colors.white],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            title: Text(
              "Interactive UI Demo",
              style: TextStyle(
                color: Colors.white,
              ),),
            backgroundColor: Colors.transparent,
            elevation: 0,
          ),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              EvenOddSection(number: number, fontSize: fontSize, backgroundColor: backgroundColor),
              CounterSection(number: number, backgroundColor: backgroundColor),
              SizedBox(height: 20),
              ChangeSizeAndColorSection(fontSize: fontSize, backgroundColor: backgroundColor, fontChanged: fontChanged, colorChanged: colorChanged),
              SizedBox(height: 120),
              ActionButtons(number: number, backgroundColor: backgroundColor, numberChanged: numberChanged),
              SizedBox(height: 70),
            ],
          ),
        ),
      ),
    );
  }
}