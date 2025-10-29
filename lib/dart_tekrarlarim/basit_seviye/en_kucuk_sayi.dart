import 'package:dart_application_1/dart_tekrarlarim/inputs.dart';

class EnKucukSayi {
  Inputs input = Inputs();
  late int enkucuk;

  void enKucuguBul() {
    int tekrar = 3;

    enkucuk = input.readInt("1. sayiyi girin");

    for (int i = 2; i <= tekrar; i++) {
      int gir = input.readInt("$i. sayiyi girin");

      if (gir < enkucuk) {
        enkucuk = gir;
      }
    }

    print("En küçük sayi = $enkucuk");
  }
}

void main(List<String> args) {
  EnKucukSayi s = EnKucukSayi();
  s.enKucuguBul();
}
