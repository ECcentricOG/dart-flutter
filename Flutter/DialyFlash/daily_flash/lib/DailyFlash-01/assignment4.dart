import 'package:flutter/material.dart';

class Assignment4 extends StatelessWidget {
  const Assignment4({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Assignment 4"),
        centerTitle: true,
        backgroundColor: Colors.deepPurple,
      ),
      body: Center(
        child: Container(
          width: 300,
          height: 300,
          decoration: const BoxDecoration(
            color: Colors.deepPurple,
            border: Border.symmetric(
              horizontal: BorderSide(width: 10, color: Colors.orangeAccent),
              vertical: BorderSide(width: 10, color: Colors.orangeAccent),
            ),
          ),
        ),
      ),
    );
  }
}
