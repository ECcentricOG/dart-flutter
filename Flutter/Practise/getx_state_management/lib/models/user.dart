import 'package:flutter/material.dart';
import 'package:getx_state_management/models/post.dart';

class User extends ChangeNotifier {
  int? userId;
  String? userFullName;
  String? userName;
  String? userEmail;
  String? userPhoneNo;
  String? userPassword;
  String? userProfilePic;
  List<Post>? userPosts;

  setUserName(String userName) {
    this.userName = userName;
    notifyListeners();
  }

  setUserFullName(String userFullName) {
    this.userFullName = userFullName;
    notifyListeners();
  }

  setUserEmail(String userEmail) {
    this.userEmail = userEmail;
    notifyListeners();
  }

  setUserPhoneNo(String userPhoneNo) {
    this.userPhoneNo = userPhoneNo;
    notifyListeners();
  }

  setUserProfilePic(String userProfilePic) {
    this.userProfilePic = userProfilePic;
    notifyListeners();
  }

  setUserPassword(String userPassword) {
    this.userPassword = userPassword;
    notifyListeners();
  }

  setUserInfo(
      {String? userPassword,
      String? userProfilePic,
      String? userPhoneNo,
      String? userEmail,
      String? userFullName,
      String? userName,
      List<Post>? userPosts}) {
    this.userPassword = userPassword;
    this.userProfilePic = userProfilePic;
    this.userPhoneNo = userPhoneNo;
    this.userEmail = userEmail;
    this.userFullName = userFullName;
    this.userName = userName;
    this.userPosts = userPosts;
    notifyListeners();
  }

  User({
    this.userId,
    this.userFullName,
    this.userName,
    this.userEmail,
    this.userPhoneNo,
    this.userPassword,
    this.userProfilePic,
    this.userPosts,
  });

  User.fromJson(Map<String, dynamic> json) {
    userId = json['userId'];
    userFullName = json['userFullName'];
    userName = json['userName'];
    userEmail = json['userEmail'];
    userPhoneNo = json['userPhoneNo'];
    userPassword = json['userPassword'];
    userProfilePic = json['userProfilePic'];
    if (json['userPosts'] != null) {
      userPosts = <Post>[];
      json['userPosts'].forEach((v) {
        userPosts!.insert(0, (Post.fromJson(v)));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['userId'] = userId;
    data['userFullName'] = userFullName;
    data['userName'] = userName;
    data['userEmail'] = userEmail;
    data['userPhoneNo'] = userPhoneNo;
    data['userPassword'] = userPassword;
    data['userProfilePic'] = userProfilePic;
    if (userPosts != null) {
      data['userPosts'] = userPosts!.map((v) => v.toJson()).toList();
    }
    return data;
  }

  @override
  String toString() {
    return "userId : $userId , UserName : $userName , userFullName : $userFullName";
  }
}
