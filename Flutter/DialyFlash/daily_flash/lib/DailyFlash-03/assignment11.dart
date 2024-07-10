import 'package:flutter/material.dart';

class Assignment11 extends StatelessWidget {
  const Assignment11({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Container(
          color: Colors.black,
          padding: const EdgeInsets.all(10),
          height: 300,
          width: 300,
          child: Image.asset("assets/png-transparel.png"),
        ),
      ),
    );
  }
}
