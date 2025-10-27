import 'package:dart_application_1/dart_tekrarlarim/inputs.dart';

class TekrarKarakterleri {
  final Inputs input = Inputs();
  void tekrarSay() {
    String kelime = input.readString("Lütfen kelime girin");

    Map<String, int> sayac = {};

    for (int i = 0; i < kelime.length; i++) {
      String harf = kelime[i];
      if (sayac.containsKey(harf)) {
        sayac[harf] = sayac[harf]! + 1;
      } else {
        sayac[harf] = 1;
      }
    }

    String result = sayac.entries.map((e) => "${e.key}:${e.value}").join(", ");
    print(result);
  }
}

void main() {
  TekrarKarakterleri tekrar = TekrarKarakterleri();
  tekrar.tekrarSay();
}
