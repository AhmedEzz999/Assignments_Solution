import 'package:flutter/material.dart';

class ActionButtons extends StatefulWidget {

  int number;
  MaterialColor backgroundColor;
  Function(int) numberChanged;
  ActionButtons ({
    required this.number,
    required this.backgroundColor,
    required this.numberChanged
    });

  @override
  State<ActionButtons> createState() => _ActionButtonsState();
}

class _ActionButtonsState extends State<ActionButtons> {

  @override
  Widget build(BuildContext context) {
return Row(
  mainAxisAlignment: MainAxisAlignment.center,
  children: [
          ElevatedButton.icon(
            onPressed: (){
              setState(() {
                widget.numberChanged(widget.number - 1);
              });
            },
            icon: Icon(
              Icons.remove,
              size: 25,
              color: Colors.white,
            ),
            label: Text(
              'Decrement',
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
                color: Colors.white
              ),
            ),
            style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15)
              ),
              backgroundColor: widget.backgroundColor.shade500,
              fixedSize: Size(150, 60),
            )
          ),
          SizedBox(
            width: 70,
          ),
          ElevatedButton.icon(
            onPressed: (){
                widget.numberChanged(widget.number + 1);
            },
            icon: Icon(
              Icons.add,
              size: 25,
              color: Colors.white,
            ),
            label: Text(
              'Increment',
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
                color: Colors.white
              ),
            ),
            style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15)
              ),
              backgroundColor: widget.backgroundColor.shade500,
              fixedSize: Size(150, 60),
            )
          ),
      ],
    );
  }
}