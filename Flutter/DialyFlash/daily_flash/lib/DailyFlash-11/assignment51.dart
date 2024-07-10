import 'package:flutter/material.dart';

class Assignment51 extends StatefulWidget {
  const Assignment51({super.key});

  @override
  State<Assignment51> createState() => _Assignment51State();
}

class _Assignment51State extends State<Assignment51> {
  bool isPressed = false;
  BorderSide colorBorder() {
    if (isPressed) {
      return const BorderSide(color: Colors.green, width: 10);
    } else {
      return const BorderSide(color: Colors.red, width: 10);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: const Center(
        child: SizedBox(
          width: 200,
          height: 80,
          child: TextField(
            decoration: InputDecoration(
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.green,
                  width: 5,
                ),
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.red,
                  width: 3,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
