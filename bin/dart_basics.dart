import 'package:dart_basics/delimeters_calculator.dart';
import 'package:dart_basics/numbers_transformer.dart';
import 'package:dart_basics/string_utilities.dart';
import 'package:dart_basics/point.dart';
import 'package:dart_basics/user.dart';

void printHomework() {
  var a = 124;
  var b = -234;
  var c = '110111010101';
  var string = 'word 1 3 word 2 word 4321 21111 word';
  var wordsList = ['a', 'b', 'a', 'a', 'one', 'one', 'one', 'three', 'six'];
  var x = 3;
  var y = 0;
  var number = 27;

  var divider = '------------------';

  print('Домашняя работа №2');

  print(divider);
  print('Задание №1');

  var calculator = DelimetersCalculator();
  print('НОД($a, $b) = ${calculator.gcd(a, b)}');
  print('НОК($a, $b) = ${calculator.lcm(a, b)}');
  print('Простые множители $a = ${calculator.factors(a)}');

  print(divider);
  print('Задание №2');

  var transformer = NumbersTransformer();
  print('$a в двоичной системе = ${transformer.intToBinary(a)}');
  print('$c в десятичной системе = ${transformer.binaryToInt(c)}');

  print(divider);
  print('Задание №3');

  var utils = StringUtilities();
  print('Числа в строке "$string": ${utils.findNumsIn(string)}');

  print(divider);
  print('Задание №4');

  print('Вхождения слов в коллекцию: ${utils.findStringsIn(wordsList)}');

  print(divider);
  print('Задание №5');

  print('Цифры без повторений в коллекции: ${utils.findNumNamesIn(wordsList)}');

  print(divider);
  print('Задание №6');

  var point = Point(1, 2, 3);
  print('Расстояние между точками: ${point.distanceTo(Point(2, 3, 3))}');

  print(divider);
  print('Задание №7');

  try {
    print('Корень $x степени от числа $number: ${number.rootPower(x)}');
    print('Корень $y степени от числа $number:');
    print('${number.rootPower(y)}');
  } catch (e) {
    print(e);
  }

  print(divider);
  print('Задание №8');

  var userManager = UserManager<User>();

  final userA = User('a@a.ru');

  final userList = [
    User.empty(),
    userA,
    User('b@b.ru'),
    AdminUser.empty(),
    AdminUser('c@c.ru'),
    AdminUser('d@d.ru'),
    GeneralUser.empty(),
    GeneralUser('e@e.ru')
  ];

  userManager.add(userList);

  userManager.removeOne(userA);

  print('Список адресов эл. почты: ${userManager.getEmails()}');
}

extension on num {
  num mabs(num x) {
    return x < 0 ? -x : x;
  }

  num rootPower(num rootDegree) {
    if (rootDegree == 0) {
      throw ArgumentError('Нельзя определить корень нулевой степени');
    }

    num eps = 0.1; // Допустимая погрешность
    num root = this / rootDegree; // Начальное приближение корня
    num rn = this; // Значение корня последовательным делением

    while (mabs(root - rn) >= eps) {
      rn = this;

      for (int i = 1; i < rootDegree; i++) {
        rn = rn / root;
      }

      root = 0.5 * (rn + root);
    }

    return root;
  }
}

void main(List<String> arguments) {
  printHomework();
}
