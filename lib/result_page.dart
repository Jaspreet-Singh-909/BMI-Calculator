import 'package:flutter/material.dart';
import 'reusable_card.dart';
import 'bottom_button.dart';
import 'constants.dart';

class ResultPage extends StatelessWidget {
  ResultPage(
      {@required this.bmiResult,
      @required this.resultText,
      @required this.interpretation});

  final String bmiResult;
  final String resultText;
  final String interpretation;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Text(
              'Your Result',
              style: kResultTextStyle,
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusableCard(
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      resultText,
                      style: kResultStartTextStyle,
                    ),
                    Text(
                      bmiResult.toUpperCase(),
                      style: kResultValue,
                    ),
                    Text(
                      "Normal BMI Range: \n    18,5 - 25kg/m2",
                      style: kLabelTextStyle,
                    ),
                    Text(
                      interpretation,
                      textAlign: TextAlign.center,
                      style: kBodyTextStyle,
                    ),
                  ],
                ),
                colour: kActiveCardColor),
          ),
          BottomButton(
              onTap: () {
                Navigator.pop(context);
              },
              buttonTitle: 'RE-CALCULATE YOUR BMI')
        ],
      ),
    );
  }
}
