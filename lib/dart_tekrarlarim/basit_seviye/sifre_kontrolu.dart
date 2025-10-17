import 'package:dart_application_1/dart_tekrarlarim/inputs.dart';

class SifreKontrolu {
  Inputs userInput = Inputs();
  late String password;

  bool checkPassword(String? password) {
    if (password == null || password.isEmpty) {
      print("Şifre boş birakilamaz");
      return false;
    } else if (password.length < 8) {
      print("en az 8 karakter girmelisin :");
      return false;
    } else if (!RegExp(r'[0-9]').hasMatch(password)) {
      print("en az 1 rakam icermeli");
      return false;
    } else if (!RegExp(r'[a-zA-Z]').hasMatch(password)) {
      print("Şifre en az 1 harf içermeli!");
      return false;
    } else {
      print("Sifre kabul edildi");
      return true;
    }
  }

  void getPassword() {
    while (true) {
      password = userInput.readString("sifre giriniz");
      bool isValid = checkPassword(password);
      if (isValid) {
        break;
      } else {
        print("Tekrar deneyiniz !");
      }
    }
  }
}

void main(List<String> args) {
  SifreKontrolu control = SifreKontrolu();
  control.getPassword();
}
