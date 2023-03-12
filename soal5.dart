import 'dart:ffi';

abstract class Kue {
  String? nama;
  double? harga;

  Kue(this.nama, this.harga);

  double hitungHarga();
  String toString() {
    return "name : $nama, harga : $harga";
  }
}

class KuePesanan extends Kue {
  double? berat;
  KuePesanan(String? nama, double? harga, this.berat) : super(nama, harga);

  @override
  double hitungHarga() {
    // TODO: implement hitungHarga
    final double total = (harga ?? 0) * (berat ?? 0);
    return total;
  }
}

class KueJadi extends Kue {
  double? jumlah;

  KueJadi(String? nama, double? harga, this.jumlah) : super(nama, harga);

  @override
  double hitungHarga() {
    // TODO: implement hitungHarga
    final double total = (harga ?? 0) * (jumlah ?? 0) * 2;
    return total;
  }
}

void main() {
  var listKue = [
    KueJadi("Roti Bakso", 13800, 100),
    KueJadi("Roti  Coklat", 13800, 200),
    KuePesanan("Roti Lady Finger", 17100, 0.55),
    KuePesanan("Roti Tawar Kering", 24200, 1.6),
    KueJadi("Roti Coklat Susu", 10300, 75),
    KueJadi("Roti Abon Sapi Peda", 13800, 50),
    KuePesanan("Chicken BBQ Pizza Loyang", 118800, 2.2),
    KuePesanan("Chicken Curry Prata", 15.500, 10),
    KueJadi("Roti isi Srikaya", 10800, 150),
    KueJadi("Roti Keju", 11600, 200),
    KuePesanan("Daily Vit Whole Wheat Bread", 47800, 2.8),
    KuePesanan("Smoked Beef Cheese Loaf", 45300, 1.2),
    KueJadi("Strawberry Polo Bun", 10800, 50),
    KueJadi("Tuna Mayonaise Bun", 13800, 30),
    KuePesanan("Vegetable Tomato Pizza Loyang", 118800, 1.8),
    KuePesanan("Roti Ketan Hitam", 29100, 0.8),
    KueJadi("Roti Srikaya Keju Roll", 11600, 50),
    KueJadi("Toast Sandwich(Smoked Beef Cheese)", 14900, 45),
    KuePesanan("Chiffon Cake Pandan", 70.400, 1.3),
    KuePesanan("Donut Halland (6pcs)", 61000, 2),
  ];

  //menampilkan semua kue
  for (int i = 0; i < listKue.length; i++) {
    if (listKue[i] is KueJadi) {
      print("${listKue[i]} -- Kue Jadi");
    } else if (listKue[i] is KuePesanan) {
      print("${listKue[i]} -- Kue Pesanan");
    }
  }

  //mencari total harga
  double totalHarga = 0;
  for (var item in listKue) {
    int i = 0;
    var hargaPerItem = item.hitungHarga();
    totalHarga = totalHarga + hargaPerItem;
  }
  //mencari total harga berdasarkan jenis kue
  double totalHargaKJ = 0;
  double totalHargaKP = 0;
  for (int i = 0; i < listKue.length; i++) {
    if (listKue[i] is KueJadi) {
      var hargaPerItemKJ = listKue[i].hitungHarga();
      totalHargaKJ = totalHargaKJ + hargaPerItemKJ;
    } else if (listKue[i] is KuePesanan) {
      var hargaPerItemKP = listKue[i].hitungHarga();
      totalHargaKP = totalHargaKP + hargaPerItemKP;
    }
  }

  print("Total harga semua kue : $totalHarga");
  print("Total harga kue jadi : $totalHargaKJ");
  print("total harga kue pesanan: $totalHargaKP");
  //harga akhir terbesar
}
