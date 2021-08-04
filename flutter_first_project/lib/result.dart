import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetHandler;

  Result(this.resultScore, this.resetHandler);

  String get resultPhrase {
    var resultText = 'You did it!';
    if (resultScore <= 9) {
      resultText = 'You are awesome and innocent!';
    } else if (resultScore <= 15) {
      resultText = 'Pretty Likeable!';
    } else {
      resultText = 'You are a bad Guy!';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            resultPhrase,
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          TextButton(
            child: Text(
              'Restart Quiz!',
            ),
            style: ButtonStyle(
              foregroundColor: MaterialStateProperty.all(Colors.blue),
            ),
            onPressed: () => resetHandler(),
          )
        ],
      ),
    );
  }
}
