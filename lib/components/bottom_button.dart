
import 'package:flutter/material.dart';
import '../constants.dart';

class BottomButton extends StatelessWidget {
  // Propriedade
  final Function() onTap;
  final String buttonTitle;

  // Construtor
  const BottomButton({required this.onTap, required this.buttonTitle});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        child: Center(
          child: Text(
            buttonTitle,
            style: kLargeButtonTextStyle,
          ),
        ),
        color: kBottomContainnerColor,
        margin: EdgeInsets.only(top: 10.0),
        padding: EdgeInsets.only(bottom: 20.0),
        width: double.infinity,
        height: kBottomContainnerHeigth,
      ),
    );
  }
}
