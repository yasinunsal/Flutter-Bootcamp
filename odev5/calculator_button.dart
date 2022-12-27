import 'package:flutter/material.dart';

class CalculatorButton extends StatelessWidget {

  final double buttonWidth;
  final String text;
  final buttonPressed;


  CalculatorButton({required this.buttonWidth, required this.text, required this.buttonPressed});

  @override
  Widget build(BuildContext context) {
    return SizedBox(height: 90, width: buttonWidth, child: ElevatedButton(onPressed: buttonPressed,
      child: Text(text, style: const TextStyle(fontSize: 30),)));
  }

}