import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import './result.dart';
import './quiz.dart';

void main() => runApp(MyApp());

 class MyApp extends StatefulWidget {
   @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}
 class _MyAppState extends State<MyApp>{
   final _questions = const [
     {'questionText':"IF : 1+4=5  and 2+5=12  and 3+6=21     "
         'then : 8+11=.....? ',
       'answers': [{'text':'32','score':0},
         {'text':'38','score':0},
         {'text':'34','score':0},
         {'text':'40','score':30}
         ]},
     {'questionText':"IF :   2=05  and  3=10 and 4=17        "
         'then : 5=.....? ',
       'answers':[{'text':'20','score':0},
         {'text':'26','score':30},
         {'text':'19','score':0},
         {'text':'23','score':0}]},
     {'questionText':" 3+3*3-3+3 ?",
       'answers':[{'text':'3','score':0},
     {'text':'12','score':30},
     {'text':'18','score':0},
     {'text':'6','score':0}]
     },
     {'questionText':"IF : 1=5 and 2=25 and 3=325 and 4=4325      "
        '                                           then : 6=.....? ',
       'answers':[{'text':'64325','score':0},
         {'text':'54325','score':0},
         {'text':'654325','score':30},
         {'text':'65432','score':0}
         ]},
     {'questionText':"if :   A+B = 76  and A-B = 38           "
     'then : A/B =.....? ',
       'answers':[{'text':'114','score':0},
         {'text':'19','score':0},
         {'text':'57','score':0},
         {'text':'3','score':30}
        ]},
   ];
  var _questionIndex = 0;
  var _totalScore = 0;

  void _resetQuiz(){
   setState (() {
      _questionIndex = 0;
      _totalScore = 0;
     print("it's restarted");
   });}

  void _answerQuestion(int score){
    setState(() {
      _totalScore += score ;
      _questionIndex += 1;
    });
    print(_questionIndex);
    if(_questionIndex< _questions.length){
      print('There is more questions');
    }
    else {
      print ('There is no more questions');
    }
  }
  @override
  Widget build(BuildContext context){

    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.teal,
        title: Container(
             child: Text('Simpl iQ quiz 🤔🤯✔'),
      ),),
      body: _questionIndex< _questions.length
          ? Quiz(
            questions : _questions,
            answerQuestion : _answerQuestion,
            questionIndex : _questionIndex

          )
          : Result(_totalScore , _resetQuiz),
        ),
    );
  }
 }