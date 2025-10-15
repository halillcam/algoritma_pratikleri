import 'package:dart_application_1/dart_tekrarlarim/inputs.dart';

class VucutKitleEndeksiExample {
  late int kilo;
  late double boy;
  late double result;
  Inputs input = Inputs();
  void userInputs() async {
    print("---- Vucut Kitle endeksi hesaplamasi -----");
    kilo = input.readInt("Kilonuzu giriniz");
    boy = input.readDouble("Boyunuzu giriniz (ornek: 1.68)");
    result = kilo / (boy * boy);
    print("Vucut Kitle endeksiniz hesaplaniyor...");
    await Future.delayed(Duration(seconds: 1));
    print("Vucut Kitle endeksiniz : $result");

    if (result >= 18.5 && result <= 24.9) {
      print("Sagliklisiniz tebrikler !");
      kaynak();
    } else if (result < 18.5) {
      print("Lutfen Kilo aliniz");
      kaynak();
    } else if (result > 24.9) {
      print("Lutfen Kilo veriniz");
      kaynak();
    } else {
      return;
    }
  }

  void kaynak() {
    print(
      "Kaynak : https://www.saglikliyasalim.com.tr/kac-olmali/vucut-kitle-indeksi-kac-olmali",
    );
  }
}

void main(List<String> args) {
  VucutKitleEndeksiExample vucutKitleEndeksiExample =
      VucutKitleEndeksiExample();
  vucutKitleEndeksiExample.userInputs();
}
