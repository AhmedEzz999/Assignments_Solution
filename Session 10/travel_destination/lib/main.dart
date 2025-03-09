import 'package:flutter/material.dart';
import 'image_section.dart';
import 'location_section.dart';
import 'info_section.dart';

void main() {
  runApp(TravelDestination());
}

class TravelDestination extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        floatingActionButton: FloatingActionButton(onPressed: (){},
        elevation: 0,
        child: Icon(Icons.bookmark_border),
        ),
        appBar: AppBar(
          backgroundColor: Color(0xffe7e2ee),
          title: Text('Travel Destination'),
          actions: [
            Icon(Icons.favorite_border),
            SizedBox(
              width: 35,
            ),
            Icon(Icons.share)
          ],
          actionsPadding: EdgeInsets.only(right: 30),
        ),
        backgroundColor: Color(0xfffff6ff),
        body: SingleChildScrollView(
          child: Column(
            children: [
              ImageSection('images/Nature.png', Icons.camera_alt),
              locationSection('Oeschinen Lake', 'Campground', 'Kandersteg, Switzerland', 4.1),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                alignment: Alignment.centerLeft,
                child: ElevatedButton.icon(
                  onPressed: (){},
                  icon: Icon(
                    Icons.info_outline,
                    size: 24,
                    color: Colors.white
                  ),
                  label: Text(
                    'About',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.white
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xff3597ea),
                    fixedSize: Size(150, 50),
                  ),
                ),
              ),
              InfoSection()
            ],
          ),
        )
      ),
    );
  }
}