import 'package:flutter/material.dart';

class Assignment55 extends StatelessWidget {
  const Assignment55({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: SizedBox(
          width: 300,
          child: TextField(
            maxLines: 5,
            minLines: 5,
            showCursor: false,
            cursorColor: Colors.red,
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
