import 'dart:io';

class LaboratuvarOrnegi {
  // user
  late final String ad;
  late final String soyad;
  late final String yas;

  String readString(String label) {
    stdout.write("$label: ");
    return stdin.readLineSync() ?? "";
  }

  void userInformations() {
    ad = readString("Hasta adi :");
    soyad = readString("Hasta Soy adi :");
    yas = readString("Hasta yasi : ");
    print("Hasta bilgileri alindi : ");
  }

  Future<void> kanAlmaIslemi() async {
    print("Kan Alma işlemine başlandı.");
    await Future.delayed(Duration(seconds: 3));
    print("Kan alma islemi tamamlandi");
    await Future.delayed(Duration(seconds: 2));
    print("Hastadan alınan kanlar laboratuvar a gönderildi...");
  }
}

Future<void> main(List<String> args) async {
  String sonuclar = "Kanlar Temiz hasta Sağlıklı";
  LaboratuvarOrnegi lab = LaboratuvarOrnegi();
  lab.userInformations();
  await lab.kanAlmaIslemi();
  await Future.delayed(Duration(seconds: 2), () {
    print("Sonuclar Bekleniyor....");
  });

  await Future.delayed(Duration(seconds: 5), () {
    print(
      "hasta bilgileri ve sonuc = ${lab.ad} ${lab.soyad} ${lab.yas} $sonuclar",
    );
  });
}
