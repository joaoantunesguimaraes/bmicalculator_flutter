import 'package:flutter/material.dart';
import '../constants.dart';

class ReusableCard extends StatelessWidget {
  // property Constante
  final Color colour;
  //nullable - opcional
  final Widget? cardChild;
  // Função para ser passada por referência para uma Função
  //final Function()? onPress;
  // OU
  final GestureTapCallback? onPress;

  // Construtor com parametros nomeados
  // e uma Função
  ReusableCard({required this.colour, this.cardChild, this.onPress});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        child: cardChild,
        //height: 140.0,
        height: 143.0,
        margin: EdgeInsets.all(6.0),
        decoration: BoxDecoration(
          color: colour,
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
    );
  }
}
