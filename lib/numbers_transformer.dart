import 'dart:math';

class NumbersTransformer {
  // Преобразование целых чисел из десятичной системы в двоичную
  String intToBinary(int number) {
    const divider = 2;
    String binary = '';

    while (number > 0) {
      binary += (number % divider).toString();
      number ~/= divider;
    }

    return binary.split('').reversed.join();
  }

  // Преобразование целых чисел из двоичной системы в десятичную
  int binaryToInt(String binary) {
    return binary
        .split('')
        .reversed
        .map((element) => int.parse(element))
        .toList()
        .asMap()
        .entries
        .map((entry) => entry.value * pow(2, entry.key))
        .reduce((value, element) => value + element)
        .toInt();
  }
}
