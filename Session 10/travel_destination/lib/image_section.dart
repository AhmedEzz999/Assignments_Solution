import 'package:flutter/material.dart';

Stack ImageSection (String imageLocation, IconData icon) {
  return Stack(
    children: [
      Image(
        image: AssetImage(imageLocation),
        width: double.infinity,
      ),
      Positioned(
        right: 20,
        bottom: 15,
        child: 
          ElevatedButton.icon(
            style: ElevatedButton.styleFrom(
              backgroundColor: Color.fromARGB(156, 59, 63, 57),
              iconColor: Colors.white,
              padding: EdgeInsets.symmetric(horizontal: 12)
            ),
            onPressed: (){},
            icon: Icon(icon),
            label: Text(
                'Gallery',
                style: TextStyle(color: Colors.white),
              ),
          )
      )
    ]
  );
}