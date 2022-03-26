import 'dart:math';

class Point {
  final double x;

  final double y;

  final double z;

  double distanceTo(Point another) {
    var xDifference = pow(another.x - x, 2);
    var yDifference = pow(another.y - y, 2);
    var zDifference = pow(another.z - z, 2);

    return sqrt(xDifference + yDifference + zDifference);
  }

  Point(this.x, this.y, this.z);

  factory Point.zero() {
    return Point(0, 0, 0);
  }

  factory Point.one() {
    return Point(1, 1, 1);
  }
}
