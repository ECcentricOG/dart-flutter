import 'package:flutter/material.dart';

class Assignment15 extends StatelessWidget {
  const Assignment15({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Container(
          height: 200,
          width: 200,
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            gradient: LinearGradient(
              colors: [Colors.red, Colors.blue],
            ),
          ),
        ),
      ),
    );
  }
}
