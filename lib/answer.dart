import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
final Function select;
final String answerText;
  Answer(this.select,this.answerText);
  @override
  Widget build(BuildContext context) {
    // TODO: implement {build
    return Container(
      width: double.infinity,
      child: RaisedButton(
        child: Text(answerText),
        textColor: Colors.white,
        color: Colors.blue,
        onPressed: select,
      ),
    );
  }
}
