import 'package:flutter/material.dart';
import 'package:odev5/calculator_button.dart';

class Anasayfa extends StatefulWidget {
  const Anasayfa({Key? key}) : super(key: key);

  @override
  State<Anasayfa> createState() => _AnasayfaState();
}

class _AnasayfaState extends State<Anasayfa> {

  var input = '';
  var result = '';
  var smallButtonWidth = 100.0;
  var largeButtonWidth = 200.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hesap Makinesi"),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(input, style: TextStyle(fontSize: 30),),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(result, style: TextStyle(fontSize: 30),),
          ),
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: Row(
              children: [
                CalculatorButton(text: "7", buttonPressed: (){
                  setState(() {
                    input += "7";
                  });
                }, buttonWidth: smallButtonWidth),
                CalculatorButton(text: "8", buttonPressed: (){
                  setState(() {
                    input += "8";
                  });
                }, buttonWidth: smallButtonWidth),
                CalculatorButton(text: "9", buttonPressed: (){
                  setState(() {
                    input += "9";
                  });
                }, buttonWidth: smallButtonWidth),
                CalculatorButton(text: "C", buttonPressed: (){
                  setState(() {
                    input = '';
                    result = '0';
                  });
                }, buttonWidth: smallButtonWidth),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: Row(
              children: [
                CalculatorButton(text: "4", buttonPressed: (){
                  setState(() {
                    input += "4";
                  });
                }, buttonWidth: smallButtonWidth),
                CalculatorButton(text: "5", buttonPressed: (){
                  setState(() {
                    input += "5";
                  });
                }, buttonWidth: smallButtonWidth),
                CalculatorButton(text: "6", buttonPressed: (){
                  setState(() {
                    input += "6";
                  });
                }, buttonWidth: smallButtonWidth),
                CalculatorButton(text: "<--", buttonPressed: (){
                  setState(() {
                    input = input.substring(0, input.length -1);
                  });
                }, buttonWidth: smallButtonWidth),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: Row(
              children: [
                CalculatorButton(text: "1", buttonPressed: (){
                  setState(() {
                    input += "1";
                  });
                }, buttonWidth: smallButtonWidth),
                CalculatorButton(text: "2", buttonPressed: (){
                  setState(() {
                    input += "2";
                  });
                }, buttonWidth: smallButtonWidth),
                CalculatorButton(text: "3", buttonPressed: (){
                  setState(() {
                    input += "3";
                  });
                }, buttonWidth: smallButtonWidth),
                CalculatorButton(text: "+", buttonPressed: (){
                  setState(() {
                    input += "+";
                  });
                }, buttonWidth: smallButtonWidth),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: Row(
              children: [
                CalculatorButton(text: "0", buttonPressed: (){
                  setState(() {
                    input += "0";
                  });
                }, buttonWidth: largeButtonWidth),
                CalculatorButton(text: "=", buttonPressed: (){
                  setState(() {
                    result = '0';
                    List<String> stringInputArray = input.split('+');
                    List<int> intInputArray = stringInputArray.map(int.parse).toList();
                    var resultInt = int.parse(result);
                    for(int number in intInputArray){
                      resultInt += number;
                    }
                    result = resultInt.toString();
                  });
                }, buttonWidth: largeButtonWidth),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
