import 'package:dart_application_1/dart_tekrarlarim/forum_app/datas/post_datas.dart';

class UserProcress {
  PostDatas posts = PostDatas();

  void showPosts() {
    for (var i in posts.fetchPosts()) {
      print("\ntitle: ${i.postTitle}\n\nSubtitle: ${i.postSubTitle}");
    }
  }
}

void main(List<String> args) {
  UserProcress userProcress = UserProcress();
  userProcress.showPosts();
}
