import 'package:flutter/material.dart';

class Assignment1 extends StatelessWidget {
  const Assignment1({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Assignment 1"),
        centerTitle: true,
        backgroundColor: Colors.amberAccent,
        leading: const Icon(Icons.chevron_left_outlined),
        actions: const [Icon(Icons.notifications)],
      ),
    );
  }
}
