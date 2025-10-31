import 'package:dart_application_1/dart_tekrarlarim/forum_app/datas/post_datas.dart';
import 'package:dart_application_1/dart_tekrarlarim/forum_app/extensions/post_model_extensions.dart';
import 'package:dart_application_1/dart_tekrarlarim/forum_app/models/post_model.dart';
import 'package:dart_application_1/dart_tekrarlarim/inputs.dart';

class UserProcress {
  PostDatas posts = PostDatas();
  Inputs userInput = Inputs();
  late String title;
  late String subtitle;
  late String comment;

  void showPosts() {
    for (int i = 0; i < posts.fetchPosts().length; i++) {
      var post = posts.fetchPosts()[i];
      print("${i + 1}) ${post.postTitle} - ${post.postSubTitle}");
    }
  }

  void addPost() async {
    title = userInput.readString("enter title");
    subtitle = userInput.readString("enter subtitle");
    PostModel newPost = PostModel(postTitle: title, postSubTitle: subtitle);
    print("Post adding ....");
    posts.addPost(newPost);
    await Future.delayed(Duration(seconds: 2));
    print("Successfull");
    await Future.delayed(Duration(seconds: 1));
    print("All posts are showing ...");
    await Future.delayed(Duration(seconds: 2));
    showPosts();
  }

  void addComments() async {
    showPosts();
    int index = userInput.readInt(
      "Enter the post number you want to comment on: ",
    );
    if (index < 1 || index > posts.fetchPosts().length) {
      print("❌ Invalid post number");
      return;
    }

    var selectedPost = posts.fetchPosts()[index - 1];

    print("\n--- SELECTED POST ---");
    print("Title: ${selectedPost.postTitle}");
    print("Subtitle: ${selectedPost.postSubTitle}");
    print("Loading comments ....");
    await Future.delayed(Duration(seconds: 2));
    print("\n--- EXISTING COMMENTS ---");
    selectedPost.showComments(); // varsa mevcut yorumları göster

    String comment = userInput.readString("\nEnter your comment: ");
    selectedPost.addComment(comment); // yeni yorumu ekle
    print("Comment adding....");
    await Future.delayed(Duration(seconds: 2));
    print("\n✅ Comment added!");
    print("\n--- UPDATED COMMENTS ---");
    selectedPost.showComments();
  }

  void userProc() {
    print("--- WELCOME TO MLBB MEDIA ----");
    print("1- Show Posts");
    print("2- Add post");
    print("3- Add post comment");

    int choice = userInput.readInt("please choice ");
    switch (choice) {
      case 1:
        showPosts();
        break;
      case 2:
        addPost();
        break;
      case 3:
        addComments();
        break;
      default:
        print("Invaild choice");
    }
  }
}

void main(List<String> args) {
  UserProcress userProcress = UserProcress();
  userProcress.userProc();
}
