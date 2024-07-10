import 'package:flutter/material.dart';

class Login with ChangeNotifier {
  String username;
  String password;

  Login({
    required this.username,
    required this.password,
  });

  setUsername(String username) {
    this.username = username;
    notifyListeners();
  }

  setPassword(String password) {
    this.password = password;
    notifyListeners();
  }
}
