import 'dart:io';

import 'package:dart_application_1/dart_tekrarlarim/market_sepeti/user_procress/user_procress.dart';

void main(List<String> args) {
  UserProcress userProcress = UserProcress();

  while (true) {
    print("1 - Urun ekle");
    print("2 - Sepeti Goruntule");
    print("3 - Toplam Tutar");
    print("4 - Cikis");

    String choice = stdin.readLineSync()!;
    switch (choice) {
      case "1":
        userProcress.addItem();
        break;

      case "2":
        userProcress.showItems();
        break;

      case "3":
        userProcress.showTotal();
        break;
      case "4":
        print("Cikis yapiliyor");
        return;

      default:
        print("Hatali Secim");
    }
  }
}
