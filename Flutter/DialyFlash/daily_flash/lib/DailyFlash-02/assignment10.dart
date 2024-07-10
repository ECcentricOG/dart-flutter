import 'package:flutter/material.dart';

class Assignment10 extends StatefulWidget {
  const Assignment10({super.key});

  @override
  State<Assignment10> createState() => _Assignment10State();
}

class _Assignment10State extends State<Assignment10> {
  bool isPressed = false;
  Color containerColor() {
    if (isPressed) {
      return Colors.deepPurpleAccent;
    } else {
      return Colors.transparent;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Container(
          height: 100,
          width: 100,
          color: containerColor(),
          child: TextButton(
            onPressed: () {
              isPressed = !isPressed;
              setState(() {});
            },
            child: const Text("Click me!"),
          ),
        ),
      ),
    );
  }
}
