import 'package:flutter/material.dart';

class Assignment48 extends StatelessWidget {
  const Assignment48({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Container(
          height: 200,
          width: 200,
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(
              Radius.circular(20),
            ),
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              stops: [0.5, 0.5],
              colors: [Colors.red, Colors.blue],
            ),
          ),
        ),
      ),
    );
  }
}
