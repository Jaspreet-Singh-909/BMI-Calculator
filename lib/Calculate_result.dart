import 'dart:math';

class CalculateBrain {
  CalculateBrain({this.height,this.weight});
  final int height;
  final int weight;

  double _bmi;
  String calculateBMI() {
     _bmi = weight/ pow(height/100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if(_bmi >= 25) {
      return 'OverWeight';
    }else if(_bmi > 18.5){
      return 'Normal';
    }else return 'Underweight';
  }

  String getInterpretation() {
    if(_bmi >= 25) {
      return 'You have a higher then the Normal Body Weight. Try to Exercise more.';
    }else if(_bmi >= 18.5) {
      return 'You have a Normal Body Weight. Good Job.';
    }else return 'You have a lower then the Normal Body Weight. You Would have to Eat More.';
  }
}