class Calculator {
  double operan1;
  double operan2;

  Calculator(this.operan1, this.operan2) {}

  void isiOperan1(double x) {
    operan1 = x;
  }

  void isiOperan2(double x) {
    operan2 = x;
  }

  double tambah() {
    return operan1 + operan1;
  }

  double kurang() {
    return operan1 - operan2;
  }

  double kali() {
    return operan1 * operan2;
  }

  double bagi(double numerator, double denominator) {
    return numerator / denominator;
  }

  double pangkat(double operan) {
    return operan * operan;
  }
}
