import 'package:flutter/material.dart';
import '../screens/input_page.dart';
import '../screens/results_page.dart';

// pODEMOS DAR O NOME QUE QUISERMOS A ESTA CLASSE
class RouteManager {

  // Constantes de classe
  // para que nos possamos referir
  // RouteManager.nomeDaVariável

  static const String homePage = '/';
  static const String resultsPage = '/resultsPage';

  // Métodos de classe
  // Podemos dar o nome que quisermos a este método
  static Route<dynamic> generateRoute(RouteSettings settings) {
    // Variável
    var valuePassed;

    if(settings.arguments != null) {
      valuePassed = settings.arguments as Map<String, dynamic>;
    }

    switch(settings.name) {
      case homePage:
        return MaterialPageRoute(builder: (context) => InputPage(),);

    case resultsPage:
        return MaterialPageRoute(builder: (context) => ResultsPage(
          bmiResult: valuePassed['bmiResult'],
          resultText: valuePassed['resultText'],
          interpretation: valuePassed['interpretation'],
        ),);
      default:
        throw FormatException('Rout not found! Check routes again!');
    }

  }
}