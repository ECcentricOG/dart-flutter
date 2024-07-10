import 'package:flutter/material.dart';

class Assignment7 extends StatelessWidget {
  const Assignment7({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(10),
          height: 100,
          width: 100,
          decoration: const BoxDecoration(
            border: Border(
              left: BorderSide(
                color: Colors.red,
                width: 5,
              ),
            ),
          ),
          child: const Center(
            child: Text("ECcentricOG"),
          ),
        ),
      ),
    );
  }
}
