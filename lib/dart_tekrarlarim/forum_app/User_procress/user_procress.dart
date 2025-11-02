import 'package:dart_application_1/dart_tekrarlarim/forum_app/datas/post_datas.dart';
import 'package:dart_application_1/dart_tekrarlarim/forum_app/datas/user_datas.dart';
import 'package:dart_application_1/dart_tekrarlarim/forum_app/extensions/post_model_extensions.dart';
import 'package:dart_application_1/dart_tekrarlarim/forum_app/forum_methods/process_methods.dart';
import 'package:dart_application_1/dart_tekrarlarim/forum_app/models/post_model.dart';
import 'package:dart_application_1/dart_tekrarlarim/forum_app/models/user_model.dart';
import 'package:dart_application_1/dart_tekrarlarim/inputs.dart';

class UserProcress implements IProcessMethods {
  final PostDatas _posts = PostDatas();
  final UserDatas _users = UserDatas();
  final Inputs _userInput = Inputs();

  late String title;
  late String subtitle;
  late String comment;
  late final String username;
  late final String password;

  @override
  Future<void> addPost() async {
    title = _userInput.readString("enter title");
    subtitle = _userInput.readString("enter subtitle");
    PostModel newPost = PostModel(postTitle: title, postSubTitle: subtitle);
    print("Post adding ....");
    _posts.addPost(newPost);
    await Future.delayed(Duration(seconds: 2));
    print("Successfull");
    await Future.delayed(Duration(seconds: 1));
    print("All posts are showing ...");
    await Future.delayed(Duration(seconds: 2));
    showPosts();
  }

  @override
  Future<void> addComments() async {
    showPosts();
    int index = _userInput.readInt(
      "Enter the post number you want to comment on: ",
    );
    if (index < 1 || index > _posts.fetchPosts().length) {
      print("❌ Invalid post number");
      return;
    }

    var selectedPost = _posts.fetchPosts()[index - 1];

    print("\n--- SELECTED POST ---");
    print("Title: ${selectedPost.postTitle}");
    print("Subtitle: ${selectedPost.postSubTitle}");
    print("Loading comments ....");
    await Future.delayed(Duration(seconds: 2));
    print("\n--- EXISTING COMMENTS ---");
    selectedPost.showComments(); // varsa mevcut yorumları göster

    String comment = _userInput.readString("\nEnter your comment: ");
    selectedPost.addComment(comment); // yeni yorumu ekle
    print("Comment adding....");
    await Future.delayed(Duration(seconds: 2));
    print("\n✅ Comment added!");
    print("\n--- UPDATED COMMENTS ---");
    selectedPost.showComments();
  }

  @override
  void userProc() {
    print("--- WELCOME TO MLBB MEDIA ----");
    print("1- Show Posts");
    print("2- Sign Up");
    print("3- Sign In");
    print("4- add Comment");

    int choice = _userInput.readInt("please choice ");
    switch (choice) {
      case 1:
        showPosts();
        break;
      case 2:
        signUp();
        break;
      case 3:
        signIn();
        break;
      case 4:
        addComments();
      default:
        print("Invaild choice");
    }
  }

  @override
  void showPosts() {
    for (int i = 0; i < _posts.fetchPosts().length; i++) {
      var post = _posts.fetchPosts()[i];
      print("${i + 1}) ${post.postTitle} - ${post.postSubTitle}");
    }
  }

  @override
  Future<void> signUp() async {
    username = _userInput.readString("username ");
    password = _userInput.readString("password ");
    if (username.isNotEmpty && password.isNotEmpty) {
      print("Checking...");
      await Future.delayed(Duration(seconds: 2));
      UserModel newUser = UserModel(username: username, password: password);
      _users.addUser(newUser);
      print("Succesfull");
    } else {
      print("Error");
    }
  }

  @override
  Future<void> signIn() async {
    username = _userInput.readString("username ");
    password = _userInput.readString("password ");
    if (username.isNotEmpty && password.isNotEmpty) {
      print("Checking...");
      await Future.delayed(Duration(seconds: 2));
      bool checkLogin = _users.checkUser(username, password);
      if (checkLogin == true) {
        print("Succesfull");
      } else {
        print("Error");
      }
    } else {
      print("Error");
    }
  }
}
