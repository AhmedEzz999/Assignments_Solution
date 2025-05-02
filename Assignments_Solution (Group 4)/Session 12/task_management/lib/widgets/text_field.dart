import 'package:flutter/material.dart';

class Textfield extends StatelessWidget {
  final TextEditingController controller;
  final VoidCallback onAddTask;

  const Textfield({
    super.key,
    required this.controller,
    required this.onAddTask,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 15, right: 10, bottom: 10, top: 10),
      decoration: const BoxDecoration(
        boxShadow: [
          BoxShadow(color: Colors.grey, blurRadius: 15, offset: Offset(0, 5)),
        ],
        color: Color(0xFFEEF4F2),
      ),
      child: Row(
        children: [
          Expanded(
            child: TextField(
              controller: controller,
              decoration: const InputDecoration(
                hintText: 'Add a new task...',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(30)),
                  borderSide: BorderSide.none,
                ),
                fillColor: Color(0xFFEEF4F2),
                filled: true,
              ),
            ),
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              padding: const EdgeInsets.symmetric(horizontal: 0),
              elevation: 0,
              backgroundColor: const Color(0xffdee4e2),
              shape: const CircleBorder(),
            ),
            onPressed: onAddTask,
            child: const Icon(Icons.add, size: 30, color: Color(0xff919795)),
          ),
        ],
      ),
    );
  }
}