class UrunModel {
  int id;
  String urunAdi;
  int fiyat;

  UrunModel({required this.id, required this.urunAdi, required this.fiyat});

  @override
  String toString() {
    return "ID: $id | Urun Adi: $urunAdi |  Fiyat: $fiyat";
  }
}
