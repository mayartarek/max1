import 'package:flutter/cupertino.dart';
import './answer.dart';
import 'question.dart';

class Quiz extends StatelessWidget{
  final  List<Map<String,Object>>  questions;
final Function answerQuestion;
final int questionIndex;
  Quiz({@required this.questions,@required this.questionIndex,@required this.answerQuestion});


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      children: [
        Question(
          questions[questionIndex]['questionText'],
        ),
        ...(questions[questionIndex]['answers'] as List<Map<String,Object>>).map((answer) {
          return Answer(()=>answerQuestion(answer['score']),answer['text']);
        }).toList()

      ],
    );
 }

}