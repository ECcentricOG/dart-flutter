import 'package:flutter/material.dart';

class SharedData extends InheritedWidget {
  final String username;

  const SharedData({
    super.key,
    required this.username,
    required super.child,
  });

  @override
  bool updateShouldNotify(SharedData oldWidget) {
    return username != oldWidget.username;
  }

  static SharedData of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<SharedData>()!;
  }
}
