import 'package:flutter/material.dart';
import 'package:flutter_quiz_app/question.dart';
import 'package:flutter_quiz_app/result_screen.dart';

class QuizScreen extends StatefulWidget {
  QuizScreen({super.key});

  @override
  State<QuizScreen> createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  int option = -1;
  int points = 0;

  int currentQuestionIndex = 0;

  List<Question> questions = [
    Question(
      "Trung Nguyễn tên thật là gì?",
      [
        "Trung",
        "Nguyễn",
        "Linh",
        "Toàn",
      ],
      2,
    ),
    Question(
      "Hôm nay thứ mấy?",
      [
        "Thứ hai",
        "Thứ ba",
        "Chủ Nhật",
        "Thứ bảy",
      ],
      3,
    ),
    Question(
      "Ngày mai thứ mấy?",
      [
        "Chủ Nhật",
        "Thứ 5",
        "Thứ 4",
        "Thứ bảy",
      ],
      0,
    ),
  ];

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
            Text(questions[currentQuestionIndex].content),
            const SizedBox(
              height: 16,
            ),
            OutlinedButton(
              style: OutlinedButton.styleFrom(
                backgroundColor: option == 0 ? Colors.blue[50] : null,
              ),
              onPressed: () {
                setState(() {
                  option = 0;
                });
              },
              child: Text(questions[currentQuestionIndex].options[0]),
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
              child: Text(questions[currentQuestionIndex].options[1]),
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
              child: Text(questions[currentQuestionIndex].options[2]),
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
              child: Text(questions[currentQuestionIndex].options[3]),
            ),
            ElevatedButton(
              onPressed: () {
                if (questions[currentQuestionIndex].correctOption == option) {
                  points += 1;
                }

                if (currentQuestionIndex == questions.length - 1) {
                  Navigator.of(context).pushReplacement(
                    MaterialPageRoute(
                      builder: (context) => ResultScreen(points),
                    ),
                  );
                } else {
                  setState(() {
                    currentQuestionIndex += 1;
                    option = -1;
                  });
                }
              },
              child: Text('Tiếp theo'),
            ),
          ],
        ),
      ),
    );
  }
}
