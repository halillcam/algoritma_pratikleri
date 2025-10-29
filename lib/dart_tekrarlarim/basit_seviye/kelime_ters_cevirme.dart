import 'package:dart_application_1/dart_tekrarlarim/inputs.dart';

class KelimeTersCevirme {
  Inputs input = Inputs();

  void tersCevir() {
    String kelime = input.readString("Kelimeyi girin");
    String ters = "";
    for (int i = kelime.length - 1; i >= 0; i--) {
      ters = ters + kelime[i];
    }
    print(ters);
  }
}

void main(List<String> args) {
  KelimeTersCevirme ters = KelimeTersCevirme();
  ters.tersCevir();
}
