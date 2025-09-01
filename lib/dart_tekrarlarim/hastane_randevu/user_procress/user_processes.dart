import 'package:dart_application_1/dart_tekrarlarim/hastane_randevu/models/clinics.dart';

class UserProcesses {
  void showClinics() {
    for (var clinic in Clinics.values) {
      print(clinic.name);
    }
  }
}

void main(List<String> args) {
  UserProcesses procress = UserProcesses();
  procress.showClinics();
}
