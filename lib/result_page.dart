import 'package:bmi_calculator/constants.dart';
import 'package:flutter/material.dart';
import 'package:bmi_calculator/reusable_card1.dart';

class ResultPage extends StatelessWidget {

  ResultPage({required this.bmiResult ,required this.resultText , required this.adviceText});

  final String bmiResult;
  final String resultText;
  final String adviceText;

  @override
  Widget build(BuildContext context) {
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
              child: Center(
                  child: Text(
                'Your Result',
                style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.w500),
              )),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusableCard1(
              colour: activeCardColour,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(bmiResult, style: resultTextStyle),
                  Text(
                    resultText.toUpperCase(),
                    style: bmiTextStyle,
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    adviceText,
                    style: adviceTextStyle,
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ),
          GestureDetector(
            onTap: (){
              Navigator.pop(context);
            },
            child: Container(
              color: Colors.teal,
              margin: const EdgeInsets.only(top: 10.0),
              width: double.infinity,
              height: 60.0,
              child:  Center(child: Text('RE-CALCULATE' , style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),)),
            ),
          ),
        ],
      ),
    );
  }
}
