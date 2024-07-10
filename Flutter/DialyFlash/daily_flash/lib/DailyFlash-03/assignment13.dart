import 'package:flutter/material.dart';

class Assignment13 extends StatefulWidget {
  const Assignment13({super.key});

  @override
  State<Assignment13> createState() => _Assignment13State();
}

class _Assignment13State extends State<Assignment13> {
  bool isColor = false;
  Color borderColor() {
    if (isColor) {
      return Colors.green;
    } else {
      return Colors.red;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Container(
          height: 200,
          width: 200,
          decoration: BoxDecoration(
            border: Border.all(
              width: 3,
              color: borderColor(),
            ),
          ),
          child: TextButton(
            onPressed: () {
              isColor = !isColor;
              setState(() {});
            },
            child: const Text(""),
          ),
        ),
      ),
    );
  }
}
