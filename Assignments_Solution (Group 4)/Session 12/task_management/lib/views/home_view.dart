import 'package:flutter/material.dart';
import 'package:task_management/widgets/text_field.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      child: Scaffold(
        backgroundColor: Color(0xfff5fbf9),
        appBar: AppBar(
          backgroundColor: Color(0xff9ef2e3),
          title: Text(
            'My Tasks',
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold
            ),
          ),
        ),
        body: Column(
          children: [
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.check_circle_outline, color: Color(0xffa9cfca),size: 120,),
                  SizedBox(height: 15),
                  Text('No tasks yet', style: TextStyle(fontSize: 25,color: Color(0xff6f7573))),
                  SizedBox(height: 15),
                  Text('Add a task to get started', style: TextStyle(fontSize: 25,color: Color(0xff949a98)))
                ],
              ),
            ),
            Textfield()
          ],
        ),
      ),
    );
  }
}