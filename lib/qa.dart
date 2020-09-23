import 'package:flutter/material.dart';

import './ans.dart';
import './question.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int questionIndex;
  final Function answerQuestions;

  Quiz(
      {@required this.questions,
        @required this.answerQuestions,
        @required this.questionIndex});

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [Colors.red,Colors.yellow,Colors.blue,Colors.green])),
        child:Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[Padding(
                padding: EdgeInsets.symmetric(
                    vertical:0
                )
            ),
              Question(
                questions[questionIndex]['questionText'],
              ),
              ...(questions[questionIndex]['answers'] as List<Map<String,Object>>).map((answers) {
                return Answer(()=>answerQuestions(answers['score']), answers['text']);
              }).toList()
            ]
        ));
  }
}