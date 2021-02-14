import 'dart:math';

class CalculatorBrain {

  CalculatorBrain({this.height, this.weight});

  final int height;
  final int weight;

  double bmi_;

  String calculateBMI() {
    bmi_ = weight / pow(height/100, 2);
    return bmi_.toStringAsFixed(1);
  }

  String getResult() {
    if (bmi_ >= 25) {
      return 'Overweight';
    } else if (bmi_ > 18.5) {
      return 'Normal';
    } else {
      return 'Underweight';
    }
  }

}