import 'dart:io';

import 'package:dart_application_1/dart_tekrarlarim/kargo_takip/model/data/urun_datas.dart';
import 'package:dart_application_1/dart_tekrarlarim/kargo_takip/model/urun_model.dart';

class UrunIslemleri {
  final UrunDatas urunler = UrunDatas();

  String readString(String label) {
    stdout.write("$label: ");
    return stdin.readLineSync()!;
  }

  int readInt(String label) {
    while (true) {
      stdout.write("$label: ");
      try {
        return int.parse(stdin.readLineSync()!);
      } catch (e) {
        print("Geçersiz giriş! Lütfen bir sayı girin.");
      }
    }
  }

  // urunleri goster

  void showItems() {
    try {
      for (var show in urunler.getUrunler()) {
        print(show);
      }
    } catch (e) {
      print("Hata olustu");
    }
  }

  // urun sec

  void chooseItem() {
    try {
      int id = readInt("Urun id girin : ");
      UrunModel? selectedItem;

      for (var selected in urunler.getUrunler()) {
        if (selected.id == id) {
          selectedItem = selected;
          break;
        }
      }

      if (selectedItem != null) {
        print("Seçilen Urun:");
        print(selectedItem);
        userInformation(selectedItem);
      } else {
        print("Bu ID'ye Ürün bulunamadı");
      }
    } catch (e) {
      print("Urun secimi sırasında bir hata olustu $e");
    }
  }

  // user Information

  Future<void> userInformation(UrunModel urun) async {
    try {
      String ad = readString("Adiniz : ");
      String soyad = readString("Soyadiniz : ");
      String adres = readString("Adresinizi girin: ");

      print("Bilgiler Aliniyor.... ");
      await Future.delayed(Duration(seconds: 2));

      String onay = readString("İşlemi onaylıyormusunuz ? ");
      if (onay.toLowerCase() == "evet") {
        await Future.delayed(Duration(seconds: 2));
        print("Ad = $ad, Soyad = $soyad, Adres: $adres ");

        // urun takip
        await Future.delayed(Duration(seconds: 2));
        print("Kargo işlemleri başlıyor . . . ");
        urunTakip(urun).listen(
          (durum) {
            print(durum);
          },
          onDone: () {
            print("Takip işlemi bitti");
          },
        );
      } else {
        print("İşlem onaylanmadı Çıkış yapılıyor....");
      }
    } catch (e) {
      print("Bilgi girişinde bir hata oluştu: $e");
    }
  }

  // ürün takip streami
  Stream<String> urunTakip(UrunModel urun) async* {
    await Future.delayed(Duration(seconds: 2));
    yield "Ürünüz kargoya verildi";

    await Future.delayed(Duration(seconds: 2));
    yield "Ürününüz Şehrinizin kargo şubesine ulaştı";

    await Future.delayed(Duration(seconds: 2));
    yield "Ürününüz Dağıtıma çıktı";

    await Future.delayed(Duration(seconds: 3));
    yield "Ürününüz Teslim edildi";

    yield "Bizi tercih ettiğiniz için teşekkürler.";
  }
}
