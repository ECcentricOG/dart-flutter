import 'package:flutter/material.dart';

class Assignment46 extends StatelessWidget {
  const Assignment46({super.key});

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
              colors: [Colors.red, Colors.blue],
            ),
          ),
        ),
      ),
    );
  }
}
