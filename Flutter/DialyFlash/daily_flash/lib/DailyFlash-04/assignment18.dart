import 'package:flutter/material.dart';

class Assignment18 extends StatefulWidget {
  const Assignment18({super.key});

  @override
  State<Assignment18> createState() => _Assignment18State();
}

class _Assignment18State extends State<Assignment18> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {},
        label: const Text("ECcentricOG"),
        icon: const Icon(Icons.favorite),
      ),
    );
  }
}
