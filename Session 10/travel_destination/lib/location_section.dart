import 'package:flutter/material.dart';

Widget locationSection (String name,String title, String location, double rating) {
  return Container(
    margin: EdgeInsets.all(15),
    padding: EdgeInsets.all(10),
    decoration: BoxDecoration(
      color: Color(0xfff6f1fa),
      borderRadius: BorderRadius.circular(20),
      boxShadow: [
        BoxShadow(
          color: Colors.grey.withValues(alpha: 1),
          spreadRadius: 1.2,
          blurRadius: 3,
        )
      ]
    ),
    child: Column(
      children: [
        ListTile(
          contentPadding: EdgeInsets.all(0),
          title: Text(
            name,
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold
            ),
          ),
          subtitle: Text(
            title,
            style: TextStyle(
              color: Colors.black,
              fontSize: 25,
              fontWeight: FontWeight.bold
            ),
          ),
          trailing: ElevatedButton.icon(
            style: ElevatedButton.styleFrom(
              padding: EdgeInsets.symmetric(vertical: 0, horizontal: 10),
              backgroundColor: Color(0xfffeecec),
              iconColor: Color(0xfff5403d),
              iconSize: 25,
            ),
            icon: Icon(
              Icons.star,
            ),
            onPressed: (){},
            label: Text(
              '$rating',
              style: TextStyle(
                color: Color(0xfff5403d),
                fontSize: 18
              ),
            )
          ),
        ),
        Row(
          children: [
            Icon(
              Icons.location_on,
              color: Color(0xffee4531),
            ),
            Text(
              location,
              style: TextStyle(
                color: Color(0xff79757a),
                fontSize: 20
              ),
            )
          ],
        ),
        Divider(
          height: 35,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
                icon(Icons.phone, 'CALL', Color(0xff1c98fd), Color(0xffddeafa)),
                icon(Icons.near_me, 'ROUTE', Color(0xff51aa59), Color(0xffe4ede5)),
                icon(Icons.share, 'SHARE', Color(0xff9c27ad), Color(0xffefddf4)),
            ],
        )
      ],
    ),
  );
}

Widget icon (IconData icon, String iconName, Color color, Color backgroundColor) {
  return Column(
    children: [
      Container(
        margin: EdgeInsets.symmetric(vertical: 0),
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: backgroundColor,
          shape: BoxShape.circle,
        ),
        child: Icon(
          icon,
          size: 30,
          color: color,
        ),
      ),
      Text(
        iconName,
        style: TextStyle(
          color: color,
          fontSize: 20
        ),
      )
    ],
  );
}