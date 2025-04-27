import 'package:flutter/material.dart';

class Textfield extends StatelessWidget {
  const Textfield({super.key});

  @override
  Widget build(BuildContext context) {
    return
      Container(
        padding: EdgeInsets.only(left: 15, top: 10, bottom: 10),
        decoration: BoxDecoration(
          boxShadow:
            [BoxShadow(
              color: Colors.grey,
              blurRadius: 7,
            )],
          color: Colors.white
        ),
        child: Row (
          children: [
            Expanded(
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Add a new task...',
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                elevation: 0,
                backgroundColor: Color(0xffdee4e2),
                shape: CircleBorder()
              ),
              onPressed: (){
                
              },
              child: Icon(Icons.add, size: 40,color: Color(0xff919795),)
            )
          ],
        ),
      );
  }
}