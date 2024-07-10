import 'package:flutter/material.dart';

class Assignment53 extends StatelessWidget {
  const Assignment53({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: SizedBox(
          width: 300,
          child: TextField(
            textAlign: TextAlign.center,
            decoration: InputDecoration(
              filled: true,
              fillColor: Colors.amber,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              hintText: "Enter your name",
            ),
          ),
        ),
      ),
    );
  }
}
