import 'package:flutter/material.dart';
import 'package:quiz_app/styles/app_text_styles.dart';
import 'package:quiz_app/views/question_view.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            gradient: RadialGradient(
            colors: [
              Color(0xFF5E3B7F),
              Color(0xFF1C1B33)
            ],
            radius: 1.5,
            ),
          ),
        padding: const EdgeInsets.only(left: 24,right: 24, top: 80, bottom: 60),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Good morning,',
              style: AppFonts.text16
            ),
            const SizedBox(height: 8),
            const Text(
              'New topic is waiting',
              style: AppFonts.text24
            ),
            const Spacer(),
            Center(
              child: SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) => QuestionView())
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    padding: const EdgeInsets.symmetric(vertical: 16),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                  ),
                  child: const Text(
                    'Start Quiz',
                    style: TextStyle(
                      color: Color(0xFF6D00A8),
                      fontSize: 24,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}