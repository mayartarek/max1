import 'package:flutter/cupertino.dart';

class Result extends StatelessWidget {
  final int resultScore;
  Result(this.resultScore);
  String get resultPhrase{
    var resultText='You did it';
    if(resultScore<=8){
      resultText='Pretty Likeable';
    }else if(resultScore<=12){
resultText='you are awesome';
    }else{
      resultText='you have to try again';
    }
    return resultText ;
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      child: Center(
        child: Text(
          resultPhrase,
          style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
