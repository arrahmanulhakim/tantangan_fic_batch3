import 'dart:math';

abstract class Shape {
  double getArea();
  double getCircumference();
}

class Rectangle extends Shape {
  double? length;
  double? width;

  @override
  double getArea() {
    // TODO: implement getArea
    final double area = (length ?? 0) * (width ?? 0);
    return area;
  }

  double getCircumference() {
    // TODO: implement getCircumference
    final double circumference = 2 * ((length ?? 0) + (width ?? 0));
    return circumference;
  }
}

class SquareShape extends Shape {
  double? side;

  @override
  double getArea() {
    // TODO: implement getArea
    final double area = (side ?? 0) * (side ?? 0);
    return area;
  }

  @override
  double getCircumference() {
    // TODO: implement getCircumference
    final double circumference = 4 * (side ?? 0);
    return circumference;
  }
}

class Circle extends Shape {
  double? radius;

  @override
  double getArea() {
    // TODO: implement getArea
    final double area = pi * (radius ?? 0) * (radius ?? 0);
    return area;
  }

  @override
  double getCircumference() {
    // TODO: implement getCircumference
    final double circumference = 2 * pi * (radius ?? 0);
    return circumference;
  }
}

void main() {
  //testing here
}
