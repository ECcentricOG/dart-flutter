import 'package:flutter/material.dart';

class Assignment26 extends StatelessWidget {
  const Assignment26({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Image.asset(
            "assets/png-transparel.png",
            fit: BoxFit.fill,
          ),
          const SizedBox(height: 50),
          const Text(
            "Spider Man",
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.w700,
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          const Text(
            "Marvel superhero Peter Parket also Known as spider man is a very useless superero which is created by sten lee",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}
