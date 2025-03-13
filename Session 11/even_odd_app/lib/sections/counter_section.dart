import 'package:flutter/material.dart';

class CounterSection extends StatefulWidget {

  int number;
  MaterialColor backgroundColor;
  CounterSection({required this.number, required this.backgroundColor});

  @override
  State<CounterSection> createState() => _CounterSectionState();
}

class _CounterSectionState extends State<CounterSection> {
  
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Counter Value',
          style: TextStyle(
            color: widget.backgroundColor.shade500,
            fontSize: 25,
            fontWeight: FontWeight.w500
          ),
        ),
        Text(
          '${widget.number}',
          style: TextStyle(
            color: Color(0xff9e29b1),
            fontSize: 50,
            fontWeight: FontWeight.w500
          ),
        ),
      ],
    );
  }
}