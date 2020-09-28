import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function restart;

  Result(this.resultScore,this.restart);

  String get finalMessage {
    var resultText;
    if (resultScore == 0){
      resultText = 'You are so bad ☹!';
    }
    else if (resultScore < 75){
      resultText = 'You need some practice ✌ !';
    }
    else if (resultScore < 150){
      resultText = 'You are good 😎!';
    }
    else if (resultScore == 150){
      resultText = 'You are so intelligent 👌🥰!';
    };
    return resultText;
  }

    @override
     Widget build(BuildContext context) {
    return Center(
      child :Column(
        children :[
          Text(
            finalMessage,
            style: TextStyle(fontSize: 28,fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          FlatButton(
              child: Text('Restart Quiz'),
              textColor : Colors.teal,
            onPressed: restart,),
        ],
      ),  );
  }
}
