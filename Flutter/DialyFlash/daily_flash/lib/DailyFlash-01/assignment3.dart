import 'package:flutter/material.dart';

class Assignment3 extends StatelessWidget {
  const Assignment3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Assignment 3"),
        backgroundColor: Colors.deepOrangeAccent,
        centerTitle: true,
        shape: RoundedRectangleBorder(
          borderRadius: const BorderRadius.only(
            bottomRight: Radius.elliptical(15, 15),
            bottomLeft: Radius.circular(15),
          ),
          side: BorderSide(
            color: Colors.transparent.withOpacity(0.1),
            width: 3,
            style: BorderStyle.solid,
          ),
        ),
      ),
    );
  }
}
