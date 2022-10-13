import 'package:bmicalculator/routes/routes.dart';
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
      initialRoute: RouteManager.homePage,
      onGenerateRoute: RouteManager.generateRoute,
      title: 'BMI Calculator',
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0xFF0A0E21),
        scaffoldBackgroundColor: Color(0xFF0A0E21),
      ),
    );
  }
}