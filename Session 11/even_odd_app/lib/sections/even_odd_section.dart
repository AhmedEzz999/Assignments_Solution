import 'package:flutter/material.dart';

class EvenOddSection extends StatefulWidget {
  
  int number;
  double fontSize;
  MaterialColor backgroundColor;

  EvenOddSection({
    required this.number,
    required this.fontSize,
    required this.backgroundColor
    });
  
  @override
  State<EvenOddSection> createState() => _EvenOddSectionState();
}

class _EvenOddSectionState extends State<EvenOddSection> {

  String isEvenText() {
  if (widget.number % 2 == 0 && widget.number != 0) {
    return 'Even: ${widget.number}';
  }
  if (widget.number % 2 != 0) {
    return 'Odd: ${widget.number}';
  }
  else {
    return 'Zero';
  }
}

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 260,
      height: 130,
      padding: EdgeInsets.all(40),
      margin: EdgeInsets.only(bottom: 30),
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: widget.backgroundColor.shade500,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Text(
        isEvenText(),
        style: TextStyle(
          color: Colors.white,
          fontSize: widget.fontSize,
          fontWeight: FontWeight.w500),
      ),
    );
  }
}