import 'dart:io';

class DiscountExample {
  late double discount;
  late int total;
  late int price;

  void userProcress() {
    print("--- İndirim Hesaplama ---");

    int? input = readInt("Fiyat giriniz");
    if (input == null) {
      print(" Geçerli bir fiyat girilmedi, işlem iptal edildi.");
      return;
    }

    price = input;

    if (price >= 1000) {
      discount = price * 0.20;
    } else if (price >= 500) {
      discount = price * 0.10;
    } else {
      discount = 0;
      print("500 TL altında indirim uygulanmaz.");
    }

    userInformation();
  }

  int? readInt(String label) {
    stdout.write("$label: ");
    String? input = stdin.readLineSync();

    if (input == null || input.trim().isEmpty) {
      return null;
    }

    try {
      return int.parse(input);
    } catch (e) {
      print(" Lütfen sadece sayı giriniz!");
      return null;
    }
  }

  void userInformation() async {
    total = (price - discount).toInt();
    print("İndirim tutarı => ${discount.toStringAsFixed(2)} TL");
    print("Ödenecek fiyat hesaplanıyor...");
    await Future.delayed(Duration(seconds: 2));
    print("Ödenecek tutar => $total TL");
  }
}

void main() {
  DiscountExample discount = DiscountExample();
  discount.userProcress();

  /*Inputs myInputTest = Inputs();
  String label = myInputTest.readString("yaz biseyler");
  print(label);*/
}
