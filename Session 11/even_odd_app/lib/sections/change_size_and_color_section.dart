import 'package:flutter/material.dart';

class ChangeSizeAndColorSection extends StatefulWidget {

  double fontSize;
  MaterialColor backgroundColor;

  ChangeSizeAndColorSection ({required this.backgroundColor, required this.fontSize});
  
  @override
  State<ChangeSizeAndColorSection> createState() => _ChangeSizeAndColorSectionState();
}

class _ChangeSizeAndColorSectionState extends State<ChangeSizeAndColorSection> {

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ElevatedButton.icon(
          onPressed: () {},
          icon: Icon(Icons.color_lens),
          label: Text("Change Color"),
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.white,
            foregroundColor: widget.backgroundColor,
          ),
        ),
        SizedBox(width: 20),
        ElevatedButton.icon(
        onPressed: () {
          setState(() {
            widget.fontSize = (widget.fontSize == 40) ? 25 : 40;
          });
        },
        icon: Icon(Icons.text_fields),
        label: Text("Change Size"),
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.white,
          foregroundColor: widget.backgroundColor,
        ),
        ),
      ],
    );
  }
}