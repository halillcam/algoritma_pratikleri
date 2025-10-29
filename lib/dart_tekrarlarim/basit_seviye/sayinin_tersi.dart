import 'package:dart_application_1/dart_tekrarlarim/inputs.dart';

class SayininTersi {
  String tersSayi(String sayi) {
    String ters = "";
    for (int i = sayi.length - 1; i >= 0; i--) {
      ters = ters + sayi[i];
    }
    return ters;
  }
}

void main(List<String> args) {
  SayininTersi sayininTersi = SayininTersi();
  Inputs input = Inputs();
  String gir = input.readString("Sayi gir bawemin");
  print(sayininTersi.tersSayi(gir));
}
