import 'package:flutter/material.dart';

class QuizScreen extends StatelessWidget {
  const QuizScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My App"),
      ),
      body: Column(
        children: [
          Text("Trung Nguyễn tên thật là gì"),
          OutlinedButton(
            onPressed: () {},
            child: Text("Trung"),
          ),
          OutlinedButton(
            onPressed: () {},
            child: Text("Nguyễn"),
          ),
          OutlinedButton(
            onPressed: () {},
            child: Text("Linh"),
          ),
          OutlinedButton(
            onPressed: () {},
            child: Text("Khum biết"),
          )
        ],
      ),
    );
  }
}
