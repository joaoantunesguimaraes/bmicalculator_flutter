import 'package:bmicalculator/screens/results_page.dart';
import 'package:flutter/material.dart';
import 'calculator_brain.dart';
import 'screens/input_page.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
      '/' : (context) => InputPage(),
      ResultsPage.routeName : (context) => ResultsPage(interpretation: '', bmiResult: '', resultText: '',),
      },
      //},
      title: 'BMI Calculator',
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0xFF0A0E21),
        scaffoldBackgroundColor: Color(0xFF0A0E21),
      ),
      //home: InputPage(),
    );
  }
}


