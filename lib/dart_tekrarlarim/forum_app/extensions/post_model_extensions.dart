import 'package:dart_application_1/dart_tekrarlarim/forum_app/models/post_model.dart';

extension PostMethods on PostModel {
  void addComment(String comment) {
    comments ??= [];
    comments!.add(comment);
  }

  void showComments() {
    if (comments == null || comments!.isEmpty) {
      print("no comments yet");
    } else {
      print("--- Comments --- ");
      for (var comment in comments!) {
        print("- $comment");
      }
    }
  }
}
