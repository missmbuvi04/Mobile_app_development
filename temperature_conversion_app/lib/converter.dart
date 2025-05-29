// lib/converter.dart

String convertTemperature(double input, String conversionType) {
  double output;

  if (conversionType == 'F to C') {
    output = (input - 32) * 5 / 9;
  } else {
    output = input * 9 / 5 + 32;
  }

  return output.toStringAsFixed(2);
}
