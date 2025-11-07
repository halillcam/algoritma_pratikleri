import 'package:dart_application_1/dart_tekrarlarim/inputs.dart';

class BasamakToplami {
  Inputs input = Inputs();

  void basamakTopla() {
    int sayi = input.readInt("Sayi gir");
    String sayiStr = sayi.toString();
    int toplam = 0;

    for (int i = 0; i < sayiStr.length; i++) {
      toplam += int.parse(sayiStr[i]);
    }
    print("Basamaklar toplami = $toplam");
  }
}

void main(List<String> args) {
  BasamakToplami basamak = BasamakToplami();
  basamak.basamakTopla();
}
