import 'package:flutter/material.dart';

class Information extends ChangeNotifier {
  String name;
  int age;

  Information({required this.age, required this.name});

  void updateInfo({required String name, required int age}) {
    this.name = name;
    this.age = age;
    notifyListeners();
  }
}
