import 'dart:math';

class CalculatorBrain {
  CalculatorBrain(this.height, this.weight);

  final int height;
  final int weight;

  //late double _bmi;

  double calculateBMI() {
    double _bmi = weight / pow(height / 100, 2);
    return _bmi;
  }

  String getResult() {
    double _bmi = calculateBMI();
    if (_bmi >= 25) {
      return 'Overwieght';
    } else if (_bmi > 18.5) {
      return 'Normal';
    } else {
      return 'Underweight';
    }
  }

  String getFeedback() {
    double _bmi = calculateBMI();
    if (_bmi >= 25) {
      return 'Your have a higher weight than normal. Try to exercise more.';
    } else if (_bmi > 18.5) {
      return 'You have a normal body weight. Good job!';
    } else {
      return 'You are lower than the normal weight. You can eat a bit more.';
    }
  }
}
