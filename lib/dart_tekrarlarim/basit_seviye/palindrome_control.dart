import 'package:dart_application_1/dart_tekrarlarim/inputs.dart';

class PalindromeControl {
  Inputs input = Inputs();
  void kelimegir() {
    final String kelime = input.readString("Lütfen bir kelime girin");
    final String ters = kelime.split("").reversed.join("");

    if (kelime == ters) {
      print("$kelime bir palindrome kelimedir");
    } else {
      print("$kelime bir palindrome kelime değildir");
    }
  }
}

void main(List<String> args) {
  PalindromeControl control = PalindromeControl();
  control.kelimegir();
}
