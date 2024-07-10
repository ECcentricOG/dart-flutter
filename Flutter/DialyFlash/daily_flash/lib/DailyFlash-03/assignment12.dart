import 'package:flutter/material.dart';

class Assignment12 extends StatelessWidget {
  const Assignment12({super.key});

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
            image: DecorationImage(
              image: AssetImage("assets/png-transparel.png"),
            ),
          ),
          child: const Center(
            child: Text(
              "ECcentricOG",
              style: TextStyle(
                color: Colors.deepPurpleAccent,
                fontSize: 30,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
