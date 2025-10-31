class PostModel {
  String postTitle;
  String postSubTitle;
  List<String>? comments;

  PostModel({
    required this.postTitle,
    required this.postSubTitle,
    this.comments,
  });
}
