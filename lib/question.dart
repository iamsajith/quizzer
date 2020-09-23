import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String questionText;

  Question(this.questionText);

  @override
  Widget build(BuildContext context) {
    return  Container(
      child:Column(
        children: [
          Container(
              width: MediaQuery.of(context).size.height,
              height: 150,
              padding: EdgeInsets.all(10),
              margin: EdgeInsets.all(10),
              child: Center(
                child: Text(questionText,
                  style: TextStyle(color: Colors.black,
                      fontFamily: 'Alike',fontStyle: FontStyle.italic, fontSize: 24),
                  textAlign: TextAlign.center,),),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  //border: Border.all(color: Colors.greenAccent),
                  color: Colors.grey[200]
              )
          ),

        ],
      ),

    );

  }
}