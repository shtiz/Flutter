

import 'dart:math';

class CalculatorBrain{


  CalculatorBrain({required this.height , required this.weight});

  final  int height;
  final int  weight;

  late double _bmi;


  String calculateBMI(){

    _bmi = weight/ pow(height/100, 2);
    return _bmi.toStringAsFixed(1);
  }
  String resultBMI(){
    if(_bmi >= 25) {
      return 'Overweight';
    }
      else if(_bmi > 18) {
      return 'Normal';
    }
        else{
          return 'Underweight';
    }
    }
    String advice(){
      if(_bmi >= 25) {
        return 'Your body weight is more  , Try to exercise more ';
      }
      else if(_bmi > 18) {
        return 'Your body weight is perfect ';
      }
      else{
        return 'Your body weight is less , You can eat a bit more';
      }
    }

}

