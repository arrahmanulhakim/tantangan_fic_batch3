import 'dart:math';

class Titik {
  int _x = 0;
  int _y = 0;

  //mengisi nilai X
  set x(int inputX) {
    _x = inputX;
  }

  int get x {
    return _x;
  }

  //mengisi nilai Y
  set y(int inputY) {
    _x = inputY;
  }

  int get y {
    return _y;
  }

  Titik() {}
  //mengisi nilai x dan y sekaligus
  Titik.set(this._x, this._y) {}

  //menampilkan nilai x dan y
  void show() {
    print("x = $_x");
    print("y = $_y");
  }

  //Pindah ke kordinat lain
  void moveCordinat(int newX, int newY) {
    _x = newX;
    _y = newY;
  }

  double distance(int x2, int y2) {
    var range = (x - x2) * (x - x2) + (y - y2) * (y - y2);

    return sqrt(range);
  }
}

void main() {
  //testing here
}
