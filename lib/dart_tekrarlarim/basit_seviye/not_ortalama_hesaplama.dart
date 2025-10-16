import 'package:dart_application_1/dart_tekrarlarim/inputs.dart';

class NotOrtalamaHesaplama {
  Inputs userInput = Inputs();
  final List<int> examNotes = [];
  late int lecture;
  late int examScore;
  late double total;
  void exams() async {
    lecture = userInput.readInt("Lütfen kaç tane dersinizin oldugunu yaziniz");
    if (lecture <= 0) {
      print("Geçerli bir sayi giriniz");
      return;
    }
    for (int i = 1; i <= lecture; i++) {
      examScore = userInput.readInt("$i. ders notunu giriniz");
      examNotes.add(examScore);
    }

    // notları hesaplar
    total = examNotes.reduce((a, b) => a + b) / examNotes.length;

    print("\nNotlar: $examNotes");
    print("Ortalama hesaplanıyor...");
    await Future.delayed(Duration(seconds: 1));
    print("Ortalamaniz: ${total.toStringAsFixed(2)}");

    if (total >= 85) {
      print("Tebrikler!");
    } else if (total >= 70) {
      print("İyi, ama daha iyisi olabilir.");
    } else if (total >= 50) {
      print("Geçtiniz.");
    } else {
      print("Kaldiniz.");
    }
  }
}

void main(List<String> args) {
  NotOrtalamaHesaplama hesapla = NotOrtalamaHesaplama();
  hesapla.exams();
}
