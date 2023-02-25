import 'package:flutter/material.dart';
import 'package:flutter_quiz_app/result_screen.dart';

class QuizScreen extends StatefulWidget {
  QuizScreen({super.key});

  @override
  State<QuizScreen> createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  int option = -1;
  String result = 'Chưa có gì';

  @override
  Widget build(BuildContext context) {
    print('Render Quiz screen');
    return Scaffold(
      appBar: AppBar(
        title: Text("My App"),
      ),
      body: Container(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const SizedBox(
              height: 16,
            ),
            Text("Trung Nguyễn tên thật là gì"),
            const SizedBox(
              height: 16,
            ),
            OutlinedButton(
              style: OutlinedButton.styleFrom(
                backgroundColor: option == 1 ? Colors.blue[50] : null,
              ),
              onPressed: () {
                setState(() {
                  option = 1;
                });
              },
              child: Text("Trung"),
            ),
            OutlinedButton(
              style: OutlinedButton.styleFrom(
                backgroundColor: option == 2 ? Colors.blue[50] : null,
              ),
              onPressed: () {
                setState(() {
                  option = 2;
                });
              },
              child: Text("Nguyễn"),
            ),
            OutlinedButton(
              style: OutlinedButton.styleFrom(
                backgroundColor: option == 3 ? Colors.blue[50] : null,
              ),
              onPressed: () {
                setState(() {
                  option = 3;
                });
              },
              child: Text("Linh"),
            ),
            OutlinedButton(
              style: OutlinedButton.styleFrom(
                backgroundColor: option == 4 ? Colors.blue[50] : null,
              ),
              onPressed: () {
                setState(() {
                  option = 4;
                });
              },
              child: Text("Khum biết"),
            ),
            ElevatedButton(
              onPressed: () {
                if (option == 3) {
                  result = 'Đúng rồi';
                } else {
                  result = 'Sai rồi';
                }

                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => ResultScreen(result),
                  ),
                );
              },
              child: Text('Tiếp theo'),
            ),
            Text(result),
          ],
        ),
      ),
    );
  }
}
