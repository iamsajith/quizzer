import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function selectHandler;
  final String answerText;
  Answer(this.selectHandler,this.answerText);



  @override
  Widget build(BuildContext context) {
    return Container(width: double.infinity,
        height: 60,
        margin: EdgeInsets.only(left: 20,right: 20,top: 5,bottom: 5),

        child: RaisedButton(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(50)
            ),
            color:Colors.grey[200],
            textColor: Colors.black,
            child: Text(answerText),
            onPressed: selectHandler

        )
    );
  }
}