import 'package:dart_application_1/dart_tekrarlarim/inputs.dart';

class EnUzunKelime {
  void bul() {
    Inputs userInput = Inputs();
    String cumle = userInput.readString("Lütfen bir cümle girin");

    List<String> kelimeler = cumle.split(" ");
    String enUzun = "";

    for (String kelime in kelimeler) {
      if (kelime.length > enUzun.length) {
        enUzun = kelime;
      }
    }
    print("En uzun kelime = $enUzun");
  }
}

void main(List<String> args) {
  EnUzunKelime kelime = EnUzunKelime();
  kelime.bul();
}
