import 'package:dart_application_1/algorithms/hastane_randevu/models/clinics.dart';

class DoctorModel {
  final String doctorName;
  final String doctorSurname;
  final Clinics doctorClinic;

  DoctorModel({
    required this.doctorName,
    required this.doctorSurname,
    required this.doctorClinic,
  });
}
