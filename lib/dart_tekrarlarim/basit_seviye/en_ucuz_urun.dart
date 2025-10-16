import 'package:dart_application_1/dart_tekrarlarim/inputs.dart';

class EnUcuzUrun {
  final int itemNumber = 3;
  List<int> items = [];

  Inputs userInput = Inputs();

  void userProcress() {
    for (int i = 1; i <= itemNumber; i++) {
      int itemPriceInput = userInput.readInt("$i Ürün fiyatini Giriniz");
      items.add(itemPriceInput);
    }
    if (items.isNotEmpty) {
      int cheapest = items.reduce((a, b) => a < b ? a : b);
      print("\nÜrün fiyatlari: $items");
      print("En ucuz ürünün fiyati: $cheapest TL");
    } else {
      print("Liste boş, işlem yapilamiyor.");
    }
  }
}

void main(List<String> args) {
  EnUcuzUrun enUcuzUrun = EnUcuzUrun();
  enUcuzUrun.userProcress();
}
