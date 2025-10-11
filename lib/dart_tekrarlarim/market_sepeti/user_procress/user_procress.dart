import 'dart:io';

import 'package:dart_application_1/dart_tekrarlarim/market_sepeti/model/shop_model.dart';

class UserProcress {
  List<ShopModel> items = [];

  String readString(String label) {
    stdout.write("$label: ");
    return stdin.readLineSync()!;
  }

  int readInt(String label) {
    stdout.write("$label: ");
    return int.parse(stdin.readLineSync()!);
  }

  void addItem() {
    print("---- Ürün ekle ----");
    String itemName = readString("Urun adi : ");
    int itemPrice = readInt("Urun fiyati : ");
    int itemNumber = readInt("Ürün adedi");

    ShopModel newItem = ShopModel(
      itemName: itemName,
      itemPrice: itemPrice,
      itemNumber: itemNumber,
    );

    items.add(newItem);
    print("${newItem.itemName} basariyla sepete eklendi");
  }

  void showItems() {
    if (items.isEmpty) {
      print("Sepetiniz bos");
      return;
    }
    print("\nSepetiniz");
    for (var item in items) {
      print("${item.itemName} & ${item.itemPrice} & ${item.itemNumber} ");
    }
  }

  void showTotal() {
    int total = 0;
    for (var item in items) {
      total += item.itemPrice * item.itemNumber;
    }
    print("\n toplam fiyat = $total");
  }
}
