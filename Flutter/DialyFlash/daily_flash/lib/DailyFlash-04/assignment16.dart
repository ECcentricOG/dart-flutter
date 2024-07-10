import 'package:flutter/material.dart';

class Assignment16 extends StatefulWidget {
  const Assignment16({super.key});

  @override
  State<Assignment16> createState() => _Assignment16State();
}

class _Assignment16State extends State<Assignment16> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: ElevatedButton(
          onPressed: () {},
          style: const ButtonStyle(
            shadowColor: MaterialStatePropertyAll(Colors.red),
          ),
          child: const Text("Press me"),
        ),
      ),
    );
  }
}
