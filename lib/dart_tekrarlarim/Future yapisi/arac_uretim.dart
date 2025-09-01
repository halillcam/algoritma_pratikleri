import 'dart:io';

class AracUretim {
  late final marka;
  late final model;

  String readString(String label) {
    stdout.write("$label: ");
    return stdin.readLineSync() ?? "";
  }

  void aracBilgileriniAl() {
    marka = readString("Aracin markasini gir  ");
    model = readString("Aracin modelini gir ");
  }

  Future<void> kaporta() async {
    await Future.delayed(Duration(seconds: 2), () {
      print("Arac bilgileri alindi. ve Kaporta montaj işlemine baslaniyor ");
    });
    await Future.delayed(Duration(seconds: 3), () {
      print("Kaporta işlemleri tamamlandi . . .");
    });
  }

  Future<void> mekanikParcalar() async {
    await Future.delayed(Duration(seconds: 2), () {
      print("Mekanik işlemlere geçildi.");
    });

    await Future.delayed(Duration(seconds: 3), () {
      print("Mekanik işlemler bitti . . .");
    });
  }

  void uretimBitti() {
    print("Araç üretimi bitti...");
    print("Üretilen araç bilgileri $marka,$model");
  }
}

void main(List<String> args) async {
  AracUretim uretim = AracUretim();
  uretim.aracBilgileriniAl();
  await uretim.kaporta();
  await uretim.mekanikParcalar();
  uretim.uretimBitti();
}
