import 'dart:ui';
import 'package:flutter/material.dart';
import './scratch.dart';
//import './main.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetOption;

  Result(this.resultScore, this.resetOption);

  String get resultPhrase {
    String resultText;
    if (resultScore <= 20) {
      resultText = 'You are Bad! Result Score:$resultScore';
    } else if (resultScore <= 30) {
      resultText = 'You are Good! Result Score:$resultScore';
    } else if (resultScore <= 40) {
      resultText = 'You are Great! Result Score:$resultScore';
    } else {
      resultText = 'You are awesome! Result Score:$resultScore';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                height: 100,
                width: MediaQuery
                    .of(context)
                    .size
                    .width,

                child: Center(child: Text(
                  resultPhrase,
                  style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),),


              ),
              Container(
                  height: 60,
                  margin: EdgeInsets.only(
                      left: 20, right: 20, top: 5, bottom: 5),

                  child: RaisedButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50)
                    ),
                    color: Colors.grey[200],
                    textColor: Colors.black,
                    child: Text('You Won'),
                    onPressed:() {
                      if (resultScore == 50)
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => MyHomePage()),
                        );
                     // else{
                      }
                    //}
                      //}
                  )
              )
            ]
        ));
  }
}