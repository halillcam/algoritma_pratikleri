import 'dart:io';
import 'package:dart_application_1/dart_tekrarlarim/rent_a_car/datas/car_datas.dart';
import 'package:dart_application_1/dart_tekrarlarim/rent_a_car/models/car_model.dart';

class UserProcress {
  CarDatas cars = CarDatas();

  String readString(String label) {
    stdout.write("$label: ");
    return stdin.readLineSync() ?? "";
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

  void showCars() {
    try {
      for (var car in cars.getCars()) {
        print(car); // toString çalışacak
      }
    } catch (e) {
      print("Araçları gösterirken bir hata oluştu: $e");
    }
  }

  void chooseCar() {
    try {
      int id = readInt("Arac Id'sini girin: ");
      CarModel? selectedCar;

      for (var car in cars.getCars()) {
        if (car.id == id) {
          selectedCar = car;
          break;
        }
      }

      if (selectedCar != null) {
        print("Seçilen Arac:");
        print(selectedCar);
        userInformation(selectedCar);
      } else {
        print("Bu ID'ye ait araç bulunamadı!");
      }
    } catch (e) {
      print("Araç seçimi sırasında bir hata oluştu: $e");
    }
  }

  Future<void> userInformation(CarModel car) async {
    try {
      String ad = readString("Adiniz : ");
      String soyad = readString("Soyadiniz : ");
      int kiralanacakGun = readInt("Aracı kaç gün kiralamak istiyorsunuz : ");

      print("Bilgiler Aliniyor.... ");
      await Future.delayed(Duration(seconds: 2));
      print("Ücret Hesaplanıyor....");

      int toplamUcret = car.fiyat * kiralanacakGun;
      await Future.delayed(Duration(seconds: 2));

      print("Ödeyeceğiniz ücret : $toplamUcret");

      String onay = readString("İşlemi onaylıyormusunuz ? ");
      if (onay.toLowerCase() == "evet") {
        await Future.delayed(Duration(seconds: 2));
        print(
          "Ad = $ad, Soyad = $soyad, Kiralanacak gün sayısı : $kiralanacakGun",
        );
        print("Bizi tercih ettiğiniz için teşekkürler.");
      } else {
        print("İşlem onaylanmadı Çıkış yapılıyor....");
      }
    } catch (e) {
      print("Bilgi girişinde bir hata oluştu: $e");
    }
  }
}
