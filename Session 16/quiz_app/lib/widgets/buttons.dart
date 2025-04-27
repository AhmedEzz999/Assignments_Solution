import 'package:flutter/material.dart';
import 'package:quiz_app/styles/app_colors.dart';
import 'package:quiz_app/views/home_view.dart';

class Buttons extends StatelessWidget {
  const Buttons({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          width: 150,
          height: 60,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            border: Border.all(
              color: AppColors.questionNumberColor,
              width: 1.5
            )
          ),
          child: ElevatedButton.icon(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.transparent,
              elevation: 0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.zero,
              )
            ),
            onPressed: (){
              Navigator.pushAndRemoveUntil(context,
                MaterialPageRoute(
                builder: (context) => HomeView()),
                (Route<dynamic> route) => false,
              );
            },
            icon: Icon( Icons.arrow_back_ios, size: 25, color: Colors.white),
            label: Text('Back', style: TextStyle(fontSize: 25, color: Colors.white),)
          ),
        ),
        Container(
          width: 150,
          height: 60,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            border: Border.all(
              color: AppColors.questionNumberColor,
              width: 1.5
            )
          ),
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.transparent,
              elevation: 0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.zero,
              )
            ),
            onPressed: () {
              
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Next', style: TextStyle(fontSize: 25, color: Colors.white),),
                SizedBox(width: 15),
                Icon(Icons.arrow_forward_ios, size: 25, color: Colors.white),
              ],
            ),
          ),
        ),
      ],
    );
  }
}