import 'package:flutter/material.dart';

class Answer extends StatelessWidget{
  final Function selectedIndex;
  final  uiAnswer;
  Answer(this.selectedIndex,this.uiAnswer);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15),
      width: double.infinity,
      child: RaisedButton(
        textColor: Colors.white,
        color: Colors.teal,
        child: Text(uiAnswer),
        onPressed: selectedIndex,
      ),
    );
  }
}