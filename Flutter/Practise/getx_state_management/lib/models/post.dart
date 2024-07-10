import 'package:getx_state_management/models/user.dart';

class Post {
  int? postId;
  String? postUrl;
  int? postLikeCount;
  String? userName;
  String? userImg;
  List<String>? likedUsers;
  String? postDescription;
  List<String>? postComments;
  User? postUser;

  Post({
    this.postId,
    this.postUrl,
    this.postLikeCount,
    this.postDescription,
    this.postComments,
    this.postUser,
    this.userName,
    this.userImg,
    this.likedUsers,
  });

  updatePost(Post post) {
    postLikeCount = post.postLikeCount;
    postComments = post.postComments;
    likedUsers = post.likedUsers;
    postDescription = post.postDescription;
  }

  Post.fromJson(Map<String, dynamic> json) {
    postId = json['postId'];
    postUrl = json['postUrl'];
    userName = json['userName'];
    userImg = json['userImg'];
    postLikeCount = json['postLikeCount'];
    postDescription = json['postDescription'];
    if (json['likedUsers'] != null) {
      List<String> likes = [];
      json['likedUsers'].forEach((user) {
        likes.add(user);
      });
      likedUsers = likes;
    }
    if (json['postComments'] != null) {
      List<String> comments = [];
      json['postComments'].forEach(
        (comment) {
          comments.add(comment);
        },
      );
      postComments = comments;
    }
    if (json['postUser'] != null) {
      postUser = User.fromJson(json['postUser']);
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['postId'] = postId;
    data['postUrl'] = postUrl;
    data['postLikeCount'] = postLikeCount;
    data['postDescription'] = postDescription;
    data['postComments'] = postComments;
    data['userName'] = userName;
    data['userImg'] = userImg;
    data['likedUsers'] = likedUsers;
    return data;
  }
}
