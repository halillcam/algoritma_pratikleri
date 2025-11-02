import 'package:dart_application_1/dart_tekrarlarim/forum_app/models/user_model.dart';

class UserDatas {
  List<UserModel> users = [
    UserModel(username: "defaultuser", password: "defaultpassword"),
  ];

  void addUser(UserModel user) {
    users.add(user);
  }

  bool checkUser(String username, String password) {
    return users.any(
      (user) => user.username == username && user.password == password,
    );
  }
}
