import 'package:bmicalculator/components/reusable_card.dart';
//import 'package:bmicalculator/screens/input_page.dart';
import 'package:flutter/material.dart';
import 'package:bmicalculator/constants.dart';
import 'package:bmicalculator/components/bottom_button.dart';
//import 'package:bmicalculator/calculator_brain.dart';

class ResultsPage extends StatelessWidget {
  // Propriedades - Constantes
  final String bmiResult;
  final String resultText;
  final String interpretation;

  // Construtor
  const ResultsPage({required this.bmiResult, required this.resultText, required this.interpretation});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.all(15.0),
              alignment: Alignment.bottomLeft,
              child: Text('Your Result', style: kTitleTextStyle,),
            ),
          ),
          Expanded(
          flex: 5,
          child: ReusableCard(
              colour: kActiveCardColor,
            cardChild: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(resultText.toUpperCase(), style: kResultTextStyle,),
                Text(bmiResult, style: kBMITextStyle,),
          Text(interpretation,
                  textAlign: TextAlign.center,
                  style: kBodyTextStyle,),
              ],
            ),
          ),
          ),
          BottomButton(
            onTap: () {
              Navigator.pop(context);
            },
            buttonTitle: 'RE-CALCULATE',
          ),
        ],
      ),
    );
  }
}
