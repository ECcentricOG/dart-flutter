import 'package:flutter/material.dart';

class Assignment50 extends StatelessWidget {
  const Assignment50({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Container(
          height: 200,
          width: 200,
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Colors.yellow,
                Colors.orangeAccent,
                Colors.orange,
              ],
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.red,
                spreadRadius: 3,
                blurRadius: 3,
                offset: Offset(5, 5),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
