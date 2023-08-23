import 'package:flutter_test/flutter_test.dart';
import 'package:calculadora_imc/main.dart';

double calculateIMC(double weight, double height) {
  return weight / (height * height);
}

void main() {
  test('IMC correto', () {
    expect(calculateIMC(70.0, 1.75), closeTo(22.86, 0.01));
  });

  test('IMC com 0 de peso', () {
    expect(calculateIMC(70.0, 0.0), 0.0);
  });
}
