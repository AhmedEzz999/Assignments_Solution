import 'package:flutter/material.dart';

class InfoSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.symmetric(vertical: 15, horizontal: 30),
      padding: EdgeInsets.all(0),
      decoration: BoxDecoration(
        color: Color(0xfff5fcfd),
        borderRadius: BorderRadius.circular(15)
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20,bottom: 10),
            child: Row(
              children: [
                Icon(
                    Icons.sell_outlined,
                    size: 24,
                    color: Color(0xff097cda)
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  '1,578m above sea level',
                  style: TextStyle(
                    fontSize: 18,
                    color: Color(0xff097cda),
                    fontWeight: FontWeight.bold
                  ),
                )
              ],
            ),
          ),
          Text(
'''
Lake Oeschinen lies at the foot of the
Blüemlisalp in the Bernese Alps. Situated
1,578 meters above sea level, it is one of
the larger Alpine Lakes. A gondola ride
from Kandersteg, followed by a half-hour
walk through pastures and pine forest,
leads you to the lake, which warms to 20
degrees Celsius in the summer. Activities
enjoyed here include rowing, and riding the
summer toboggan run.
''',
style: TextStyle(
  fontSize: 15
),
          ),
        ],
      ),
    );
  }
}