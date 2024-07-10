import 'package:flutter/material.dart';

class Assignment54 extends StatelessWidget {
  const Assignment54({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: SizedBox(
          width: 300,
          child: TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              labelText: "Enter your name",
            ),
          ),
        ),
      ),
    );
  }
}
