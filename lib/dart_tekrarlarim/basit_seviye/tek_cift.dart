import 'package:dart_application_1/dart_tekrarlarim/inputs.dart';

class TekCift {
  Inputs input = Inputs();

  void bul() {
    int sayi = input.readInt("Sayi gir");

    if (sayi % 2 == 0) {
      print("Cift sayi");
    } else {
      print("Tek sayi");
    }
  }
}

void main(List<String> args) {
  TekCift bul = TekCift();
  bul.bul();
}
