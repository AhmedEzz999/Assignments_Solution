import 'package:flutter/material.dart';

class ChangeSizeAndColorSection extends StatefulWidget {

  double fontSize;
  MaterialColor backgroundColor;
  Function(double) fontChanged;
  Function(MaterialColor) colorChanged;
  List <MaterialColor> colors = [
    Colors.green,
    Colors.blue,
    Colors.red,
    Colors.purple
  ];

  ChangeSizeAndColorSection ({
    required this.backgroundColor, 
    required this.fontSize,
    required this.fontChanged,
    required this.colorChanged
    });
  
  @override
  State<ChangeSizeAndColorSection> createState() => _ChangeSizeAndColorSectionState();
}

class _ChangeSizeAndColorSectionState extends State<ChangeSizeAndColorSection> {

  int colorIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          height: 55,
          width: 170,
          child: ElevatedButton.icon(
            onPressed: () {
              colorIndex = (colorIndex + 1) % widget.colors.length;
              widget.colorChanged(widget.colors[colorIndex]);
            },
            icon: Icon(
              Icons.color_lens,
              color: widget.backgroundColor,
              size: 20),
            label: Text(
              "Change Color",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600
              ),
              ),
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.white,
              foregroundColor: widget.backgroundColor,
            ),
          ),
        ),
        SizedBox(width: 20),
        Container(
          height: 55,
          width: 170,
          child: ElevatedButton.icon(
          onPressed: () {
            widget.fontChanged(widget.fontSize = (widget.fontSize == 40) ? 30 : 40);
          },
          icon: Icon(
            Icons.text_fields,
            color: widget.backgroundColor,
            size: 20),
          label: Text(
            "Change Size",
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600
            ),
          ),
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.white,
            foregroundColor: widget.backgroundColor,
          ),
          ),
        ),
      ],
    );
  }
}