import 'package:flutter/material.dart';

class Player {
  final String name;
  final int jerNo;

  const Player({required this.name, required this.jerNo});
}

class Statistic extends ChangeNotifier {
  int goals;
  int assists;

  Statistic({required this.goals, required this.assists});

  void updateData(int goals, int assists) {
    this.goals = goals;
    this.assists = assists;

    notifyListeners();
  }
}
