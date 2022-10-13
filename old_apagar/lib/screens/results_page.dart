import 'package:bmicalculator/components/reusable_card.dart';
import 'package:bmicalculator/screens/input_page.dart';
import 'package:flutter/material.dart';
import 'package:bmicalculator/constants.dart';
import 'package:bmicalculator/components/bottom_button.dart';
import 'package:bmicalculator/calculator_brain.dart';

class ResultsPage extends StatelessWidget {
  // Propriedades - Constantes
  final String bmiResult;
  final String resultText;
  final String interpretation;

  // Construtor
  const ResultsPage({required this.bmiResult, required this.resultText, required this.interpretation});

  // Variaveis de Class
  //static const routeName = '/resultsPage';
  static const routeName = '/extractArguments';


  @override
  Widget build(BuildContext context) {

    final ArgumentsIMC args = ModalRoute.of(context)!.settings.arguments as ArgumentsIMC;

    //final CalculatorBrain calc = ModalRoute.of(context)!.settings.arguments as CalculatorBrain;




    return Scaffold(
      appBar: AppBar(
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
                Text(args.resultText.toUpperCase(), style: kResultTextStyle,),

                Text(args.imcResult, style: kBMITextStyle,),
          Text(args.interpretation,
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

/*
Para as rotas nomeadas
store the arguments I need to pass:
 */

class ArgumentsIMC {
  final String imcResult;
  final String resultText;
  final String interpretation;

  ArgumentsIMC({required this.imcResult, required this.resultText, required this.interpretation});
}