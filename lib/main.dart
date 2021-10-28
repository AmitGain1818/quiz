import 'package:flutter/material.dart';
import 'package:quiz/question.dart';

void main() => runApp(Quiz());

class Quiz extends StatefulWidget {
  @override
  _QuizState createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  var _answerIndex = 0;
  void answerQuestion() {
    setState(() {
      _answerIndex = _answerIndex + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    var question = [
      'What is my favorite color?',
      'What is my favorite pet?',
      'What is my favorite car?',
      'What is my favorite movie?',
    ];
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.cyan,
          title: Text('Quiz App'),
        ),
        body: Center(
          child: Column(
            children: [
              Questions(
                question[_answerIndex],
              ),
              RaisedButton(
                color: Colors.teal,
                onPressed: answerQuestion,
                child: Text('Answer-1'),
              ),
              RaisedButton(
                color: Colors.blue,
                onPressed: answerQuestion,
                child: Text('Answer-2'),
              ),
              RaisedButton(
                color: Colors.green,
                onPressed: answerQuestion,
                child: Text('Answer-3'),
              ),
              RaisedButton(
                color: Colors.cyan,
                onPressed: answerQuestion,
                child: Text('Answer-4'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
