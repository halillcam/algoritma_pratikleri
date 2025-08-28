import 'package:dart_application_1/algorithms/rent_a_car/methods/methods.dart';
import 'package:dart_application_1/algorithms/rent_a_car/models/car_model.dart';

class CarDatas extends IGetCarMethods {
  @override
  List<CarModel> getCars() {
    return [
      CarModel(id: 1, marka: "Mercedes G63", model: 2019, fiyat: 2700),
      CarModel(id: 2, marka: "Honda Civic", model: 2017, fiyat: 2300),
      CarModel(id: 3, marka: "Hyundai Elentra", model: 2009, fiyat: 1000),
      CarModel(id: 4, marka: "Wolkswagen Golf 8", model: 2017, fiyat: 2450),
      CarModel(id: 5, marka: "Ford Focus", model: 2022, fiyat: 3000),
    ];
  }
}
