import 'package:dart_application_1/dart_tekrarlarim/inputs.dart';

class CumleKelimeSayisi {
  Inputs input = Inputs();

  void kelimeSayisi() {
    final String cumle = input.readString("Cümle gir: ");
    final List<String> kelimeler = cumle.split(" "); // boşluklardan böl
    int kelimeSayisi = kelimeler.length; // kaç kelime var say

    print("Kelime sayisi = $kelimeSayisi");
  }
}

void main(List<String> args) {
  CumleKelimeSayisi cumle = CumleKelimeSayisi();
  cumle.kelimeSayisi();
}
