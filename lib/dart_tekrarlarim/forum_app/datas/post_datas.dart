import 'package:dart_application_1/dart_tekrarlarim/forum_app/models/post_model.dart';

class PostDatas {
  final List<PostModel> _posts = [
    PostModel(
      postTitle: "New Freya",
      postSubTitle: "Omg Freya is being renewed",
    ),
    PostModel(
      postTitle: "Aamon Build",
      postSubTitle: "Could you tell me Aamon's build ? ",
    ),
    PostModel(
      postTitle: "Franco Hook settings",
      postSubTitle: "How I can Franco hook's settings guys ? ",
    ),
    PostModel(
      postTitle: "is RRQ eliminated in MPL id ?",
      postSubTitle: "Omg RRQ wont come M7",
    ),
    PostModel(
      postTitle: "two Aurora teams will go to M7",
      postSubTitle: "Two Aurora teams are going to M7, wow!",
    ),
  ];

  // tüm gönderileri döndür
  List<PostModel> fetchPosts() {
    return _posts;
  }

  // yeni gönderi ekle
  void addPost(PostModel post) {
    _posts.add(post);
  }
}
