import 'package:flutter/material.dart';

class Assignment14 extends StatelessWidget {
  const Assignment14({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Container(
          height: 200,
          width: 200,
          decoration: const BoxDecoration(
            color: Colors.black,
            boxShadow: [
              BoxShadow(
                color: Colors.yellow,
                spreadRadius: 0,
                blurRadius: 5,
                offset: Offset(0, -10),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
