class KahvaltiOrnegi {
  Future<void> cayKoydum() async {
    print("Çay suyu koyuldu");
    print("Çay Ocağa koyuldu");
    await Future.delayed(Duration(seconds: 7));
    print("Çay hazır");
    print("Kahvalti hazir");
  }

  Future<void> digerUrunler() async {
    print("Masa örtüsü serildi");
    await Future.delayed(Duration(seconds: 2));
    print("Peynir,zeytin,yumurta,bal ürünleri Masaya getirildi");
    await Future.delayed(Duration(seconds: 2));
    print("Çay bekleniyor ....");
  }
}

Future<void> main(List<String> args) async {
  KahvaltiOrnegi kahvalti = KahvaltiOrnegi();
  kahvalti.cayKoydum();
  kahvalti.digerUrunler();
}
