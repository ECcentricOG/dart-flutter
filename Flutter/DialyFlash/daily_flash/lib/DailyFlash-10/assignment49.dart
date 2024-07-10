import 'package:flutter/material.dart';

class Assignment49 extends StatelessWidget {
  const Assignment49({super.key});

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
              colors: [Colors.blue, Colors.purple, Colors.purple],
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.red,
                spreadRadius: 1,
                offset: Offset(10, 10),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
