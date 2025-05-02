import 'package:flutter/material.dart';

class HomeViewEmpty extends StatelessWidget {
  const HomeViewEmpty({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(Icons.check_circle_outline, color: Color(0xffa9cfca), size: 120),
        SizedBox(height: 15),
        Text(
          'No tasks yet',
          style: TextStyle(fontSize: 25, color: Color(0xff6f7573)),
        ),
        SizedBox(height: 15),
        Text(
          'Add a task to get started',
          style: TextStyle(fontSize: 25, color: Color(0xff949a98)),
        ),
      ],
    );
  }
}