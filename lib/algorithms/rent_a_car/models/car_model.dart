class CarModel {
  final int id;
  final String marka;
  final int model;
  int fiyat;

  CarModel({
    required this.id,
    required this.marka,
    required this.model,
    required this.fiyat,
  });

  // show car
  @override
  String toString() {
    return "ID: $id | Marka: $marka | Model: $model | Fiyat: $fiyat";
  }
}
