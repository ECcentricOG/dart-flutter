import 'package:flutter/material.dart';

class Assignment52 extends StatefulWidget {
  const Assignment52({super.key});

  @override
  State<Assignment52> createState() => _Assignment52State();
}

class _Assignment52State extends State<Assignment52> {
  bool isPressed = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: SizedBox(
          width: 300,
          child: TextField(
            decoration: InputDecoration(
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              suffixIcon: const Icon(Icons.lock),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              suffix: isPressed ? const Icon(Icons.search) : null,
            ),
            onTap: () {
              isPressed = true;
              setState(() {});
            },
          ),
        ),
      ),
    );
  }
}
