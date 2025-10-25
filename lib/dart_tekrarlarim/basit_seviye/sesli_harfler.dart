import 'package:dart_application_1/dart_tekrarlarim/inputs.dart';

class SesliHarfler {
  void kelimeGir() {
    Inputs userInput = Inputs();
    String kelime = userInput.readString("Lütfen kelime gir: ");

    int sayac = 0;
    List<String> sesliler = ['a', 'e', 'ı', 'i', 'o', 'ö', 'u', 'ü'];

    for (int i = 0; i < kelime.length; i++) {
      String karakter = kelime[i].toLowerCase();
      if (sesliler.contains(karakter)) {
        sayac++;
      }
    }

    if (sayac > 0) {
      print("$sayac tane sesli harf bulundu");
    } else {
      print("Girilen kelimede sesli harf yok");
    }
  }
}

void main(List<String> args) {
  SesliHarfler harf = SesliHarfler();
  harf.kelimeGir();
}
