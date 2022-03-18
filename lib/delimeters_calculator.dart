class DelimetersCalculator {
  // Greatest Common Divisor
  int gcd(int a, int b) {
    while (b != 0) {
      var t = b;
      b = a % t;
      a = t;
    }

    return a;
  }

  // Least Common Multiple
  int lcm(int a, int b) {
    return (a / gcd(a, b) * b).abs().toInt();
  }

  // Prime Factors
  List<int> factors(int number) {
    if (number < 2) return [];

    int factor = 2;
    List<int> listFactors = [];

    while (number / factor != 1) {
      if (number % factor == 0) {
        listFactors.add(factor);

        number = number ~/ factor;
        factor = 2;
      } else {
        factor++;
      }
    }

    listFactors.add(factor);

    return listFactors;
  }
}
