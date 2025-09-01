import 'package:dart_application_1/dart_tekrarlarim/hastane_randevu/methods/doctor_methods.dart';
import 'package:dart_application_1/dart_tekrarlarim/hastane_randevu/models/clinics.dart';
import 'package:dart_application_1/dart_tekrarlarim/hastane_randevu/models/doctor_model.dart';

class DoctorDatas extends IDoctorMethods {
  @override
  List<DoctorModel> getDoctors() {
    return [
      DoctorModel(
        doctorName: "Fatma",
        doctorSurname: "Kiril",
        doctorClinic: Clinics.beyinCerrahi,
      ),
      DoctorModel(
        doctorName: "Esra",
        doctorSurname: "Donmez",
        doctorClinic: Clinics.dahiliye,
      ),
      DoctorModel(
        doctorName: "Tayfun",
        doctorSurname: "Cankurtaran",
        doctorClinic: Clinics.uroloji,
      ),
      DoctorModel(
        doctorName: "Ahmet",
        doctorSurname: "Sansalan",
        doctorClinic: Clinics.kardioloji,
      ),
      DoctorModel(
        doctorName: "Huseyin",
        doctorSurname: "Bozok",
        doctorClinic: Clinics.genelCerrahi,
      ),
      DoctorModel(
        doctorName: "Buse",
        doctorSurname: "Akman",
        doctorClinic: Clinics.gogusCerrahi,
      ),
      DoctorModel(
        doctorName: "Özgür",
        doctorSurname: "Çeri",
        doctorClinic: Clinics.kardioloji,
      ),
      DoctorModel(
        doctorName: "Selen",
        doctorSurname: "Koc",
        doctorClinic: Clinics.kbb,
      ),
      DoctorModel(
        doctorName: "Yigit",
        doctorSurname: "Suleymanoglu",
        doctorClinic: Clinics.psikiatri,
      ),
      DoctorModel(
        doctorName: "Emel",
        doctorSurname: "Karadeniz",
        doctorClinic: Clinics.ortopedi,
      ),
    ];
  }
}
