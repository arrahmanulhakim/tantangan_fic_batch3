class Nilai {
  double? _quis;
  double? _uts;
  double? _uas;

  set quis(double valueQuis) {
    _quis = valueQuis;
  }

  set uts(double valueUts) {
    _uts = valueUts;
  }

  set uas(double valueUas) {
    _uas = valueUas;
  }

  double getNA() {
    final double na =
        (0.2 * (_quis ?? 0)) + (0.3 * (_uts ?? 0)) + (0.5 * (_uas ?? 0));
    return na;
  }

  String getIndex() {
    String? index;
    if (this.getNA() >= 80 && this.getNA() <= 100) {
      index = "A";
    } else if (this.getNA() >= 68 && this.getNA() < 80) {
      index = "B";
    } else if (this.getNA() >= 56 && this.getNA() < 68) {
      index = "C";
    } else if (this.getNA() >= 45 && this.getNA() < 56) {
      index = "D";
    } else if (this.getNA() >= 0 && this.getNA() < 45) {
      index = "E";
    }
    return index ?? "F";
  }

  String getKeterangan() {
    String? keterangan;

    if (this.getIndex() == "A") {
      keterangan = "Sangat baik";
    } else if (this.getIndex() == "B") {
      keterangan = "Baik";
    } else if (this.getIndex() == "C") {
      keterangan = "Cukup";
    } else if (this.getIndex() == "D") {
      keterangan = "Kurang";
    } else if (this.getIndex() == "E") {
      keterangan = "Sangat Kurang";
    }

    return keterangan ?? "-";
  }
}

void main() {
  //testing here
}
