import 'package:flutter/material.dart';

class Assignment9 extends StatelessWidget {
  const Assignment9({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(8),
          height: 100,
          width: 200,
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.redAccent,
              width: 3,
            ),
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(15),
              bottomRight: Radius.circular(15),
            ),
          ),
          child: const Text("ECcentricOG"),
        ),
      ),
    );
  }
}
