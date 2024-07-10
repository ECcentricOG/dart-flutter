import 'package:flutter/material.dart';

class User with ChangeNotifier {
  int? id;
  String? name;
  String username;
  String password;

  User({required this.username, required this.password, this.id, this.name});

  setId(int id) {
    this.id = id;
    notifyListeners();
  }

  setName(String name) {
    this.name = name;
    notifyListeners();
  }
}
