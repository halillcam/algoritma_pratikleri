import 'package:dart_application_1/dart_tekrarlarim/kargo_takip/methods/kargo_methods.dart';
import 'package:dart_application_1/dart_tekrarlarim/kargo_takip/model/urun_model.dart';

class UrunDatas extends IKargoMethods {
  @override
  List<UrunModel> getUrunler() {
    return [
      UrunModel(id: 1, urunAdi: "Tarak", fiyat: 100),
      UrunModel(id: 2, urunAdi: "T-Shirt", fiyat: 250),
      UrunModel(id: 3, urunAdi: "Mouse", fiyat: 1250),
      UrunModel(id: 4, urunAdi: "Gözlük", fiyat: 3300),
      UrunModel(id: 5, urunAdi: "Telefon", fiyat: 1200),
    ];
  }
}
