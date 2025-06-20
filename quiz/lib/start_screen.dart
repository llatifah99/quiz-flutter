import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  final VoidCallback
  onStartQuiz; //Callback yg akan dipanggil saat tombol ditekan

  const StartScreen({super.key, required this.onStartQuiz});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min, // space sesuai kebutuhan children
        children: [
          Image.asset('assets/images/logo.png', width: 300),
          SizedBox(height: 10),
          Text(
            "Learn Math in Fun way",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w600,
              color: Colors.white,
            ),
          ),
          SizedBox(height: 20),
          OutlinedButton.icon(
            onPressed: onStartQuiz,
            style: OutlinedButton.styleFrom(foregroundColor: Colors.white),
            icon: Icon(Icons.arrow_right_alt),
            label: Text("Start Quiz"),
          ),
        ],
      ),
    );
  }
}
