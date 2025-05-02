import 'package:flutter/material.dart';
import 'package:task_management/views/home_view.dart';

void main() => runApp(const TaskManagement());

class TaskManagement extends StatelessWidget {
  const TaskManagement({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeView(),
    );
  }
}