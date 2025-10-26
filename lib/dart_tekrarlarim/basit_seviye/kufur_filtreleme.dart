import 'package:dart_application_1/dart_tekrarlarim/inputs.dart';

class KufurFiltreleme {
  List<String> kelimeler = [
    "oc",
    "amk",
    "pic",
    "yarrak",
    "orospu cocugu",
    "anani sikim",
  ];

  Inputs input = Inputs();

  void filtreTest() {
    String kelime = input.readString("Lütfen kelime girin");
    for (var filtre in kelimeler) {
      if (filtre == kelime) {
        print("sansürlü kelime girdin !");
        return;
      }
    }
    print(kelime);
  }
}

void main(List<String> args) {
  KufurFiltreleme filtre = KufurFiltreleme();
  filtre.filtreTest();
}
