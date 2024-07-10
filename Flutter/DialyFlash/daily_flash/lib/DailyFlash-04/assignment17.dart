import 'package:flutter/material.dart';

class Assignment17 extends StatefulWidget {
  const Assignment17({super.key});

  @override
  State<Assignment17> createState() => _Assignemnt17State();
}

class _Assignemnt17State extends State<Assignment17> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Container(
          height: 200,
          width: 200,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(
              color: Colors.red,
              width: 3,
            ),
          ),
          child: ElevatedButton(
            onPressed: () {},
            style: const ButtonStyle(
              backgroundColor: MaterialStatePropertyAll(Colors.black),
            ),
            child: const Text("Press me"),
          ),
        ),
      ),
    );
  }
}
