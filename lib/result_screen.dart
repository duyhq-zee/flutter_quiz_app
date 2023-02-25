import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_quiz_app/quiz_screen.dart';

class ResultScreen extends StatelessWidget {
  int myPoint = 0;

  ResultScreen(this.myPoint);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text('Số điểm của bạn: $myPoint'),
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pushReplacement(
                    MaterialPageRoute(
                      builder: (context) => QuizScreen(),
                    ),
                  );
                },
                child: Text('Thử lại'))
          ],
        ),
      ),
    );
  }
}
