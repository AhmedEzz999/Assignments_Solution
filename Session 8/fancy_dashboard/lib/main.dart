import 'package:flutter/material.dart';

void main() {
  runApp(FancyDashboard());
}

class FancyDashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        body: Center(
          child: Container(
              color: Color(0xffbbdffa),
              margin: EdgeInsets.all(15),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(25),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        RegularCards(Color(0xfff05350), 'A'),
                        RegularCards(Color(0xfffea727), 'B'),
                        RegularCards(Color(0xfffcd735), 'C')
                      ],
                    ),
                  ),
                  Container(
                    color: Color(0xffc5cbe8),
                    width: 350,
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 15),
                          child: Text(
                            'Fancy Section',
                            style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                              color: Color(0xff434fb1)
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 30),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              FancyCards(Color(0xff7e58c3), 1),
                              FancyCards(Color(0xffaa46bc), 2),
                              FancyCards(Color(0xff9676ce), 3)
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              FancyCards(Color(0xffbb67c8), 4),
                              FancyCards(Color(0xffb29dd9), 5),
                              FancyCards(Color(0xffd392d8), 6)
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 20),
                    child: Text(
                        'Info Cards',
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: Color(0xff415ba7)
                        )
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 30),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        InfoCards(Color(0xff26a5a3), 23, 'Active'),
                        InfoCards(Color(0xffebb913), 15, 'Pending'),
                        InfoCards(Color(0xff469a4a), 7, 'Completed'),
                      ],
                    ),
                  )
                ],
              ),
            ),
        ),
        )
      );
  }
}

Widget RegularCards (Color color, String cardCharacter) {
  return Container(
    color: color,
    width: 80,
    height: 50,
    child: Center(
      child: Text(
            cardCharacter,
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold, color: Colors.white),
          ),
    ),
  );
}

Widget FancyCards (Color color, int cardNumber) {
  return Container(
    color: color,
    width: 75,
    height: 70,
    child: Center(
      child: Text(
            '$cardNumber',
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold, color: Colors.white),
          ),
    ),
  );
}

Widget InfoCards (Color color, int cards, String status) {
  return Container(
    color: Colors.white,
    width: 100,
    height: 100,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          '$cards',
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold, color: color),
        ),
        Text(
          status,
          style: TextStyle(fontSize: 18, color: color),
        ),
      ],
    ),
  );
}