void main() {
  double myWeight = 70.5; // in kg
  double myHeight = 1.75; // in meters

  double bmiResult = calculateBMI(myWeight, myHeight);
  String categoryResult = getBMICategory(bmiResult);

  print('Your BMI is: ${bmiResult.toStringAsFixed(2)}');
  print('Category: $categoryResult');
}

double calculateBMI(double weight, double height) {
  return weight / (height * height);
}

String getBMICategory(double bmi) {
  if (bmi < 18.5) {
    return 'Underweight';
  } else if (bmi >= 18.5 && bmi <= 24.9) {
    return 'Normal';
  } else if (bmi >= 25 && bmi <= 29.9) {
    return 'Overweight';
  } else {
    return 'Obese';
  }
}