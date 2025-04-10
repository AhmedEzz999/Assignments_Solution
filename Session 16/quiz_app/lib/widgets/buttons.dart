import 'package:flutter/material.dart';
import 'package:quiz_app/styles/app_colors.dart';

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
            onPressed: (){},
            icon: Icon(
              Icons.arrow_back_ios,
              size: 25,
              color: Colors.white
            ),
            label: Text(
              'Back',
              style: TextStyle(
                fontSize: 25,
                color: Colors.white
              ),
            )
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
          child: ElevatedButton.icon(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.transparent,
              elevation: 0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.zero,
              )
            ),
            onPressed: (){},
            icon: Icon(
              Icons.arrow_forward_ios,
              size: 25,
              color: Colors.white
            ),
            label: Text(
              'Next',
              style: TextStyle(
                fontSize: 25,
                color: Colors.white
              ),
            )
          ),
        ),
      ],
    );
  }
}