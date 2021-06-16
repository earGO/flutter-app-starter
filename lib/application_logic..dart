import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ApplicationLogic extends StatefulWidget {
  @override
  _ApplicationLogicState createState() => _ApplicationLogicState();
}

class _ApplicationLogicState extends State<ApplicationLogic> {
  var questionIndex = 0;

  final questions = [
    'What is your name?',
    'What is your quest?',
    'What is your favorite color?'
  ];

  void answerQuestions(int index) {
    setState(() {
      questionIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(questions[questionIndex]),
          RaisedButton(
            onPressed: () => answerQuestions(0),
            child: Text('Show question 1'),
          ),
          RaisedButton(
            onPressed: () => answerQuestions(1),
            child: Text('Show question 2'),
          ),
          RaisedButton(
            onPressed: () => answerQuestions(2),
            child: Text('Show question 3'),
          )
        ],
      ),
    );
  }
}
