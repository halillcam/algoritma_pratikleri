import 'package:dart_application_1/dart_tekrarlarim/inputs.dart';

class TekSayilar {
  Inputs input = Inputs();

  void sayilar() {
    int sayi = input.readInt("Sayi gir");
    print("girilen sayi = $sayi");
    int toplamTek = 0;
    int toplamCift = 0;

    for (int i = 0; i <= sayi; i++) {
      // Tek sayilar
      if (i % 2 != 0) {
        print(i);
        toplamTek++;
      }
      // cift sayilar
      else {
        print(i);
        toplamCift++;
      }
    }
    print("Toplam tek sayi adedi = $toplamTek");
    print("Toplam Cift sayi adedi = $toplamCift");
  }

  // hem tek hem cift
}

void main(List<String> args) {
  TekSayilar tekSayilar = TekSayilar();
  tekSayilar.sayilar();
}
