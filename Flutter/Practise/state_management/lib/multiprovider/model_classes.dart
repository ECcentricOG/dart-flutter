import 'package:flutter/material.dart';

class Employee {
  final String empName;
  final int id;

  const Employee({required this.id, required this.empName});
}

class Company extends ChangeNotifier {
  String name;
  String role;
  Company({required this.name, required this.role});

  void change(String name, String role) {
    this.name = name;
    this.role = role;
    notifyListeners();
  }
}
