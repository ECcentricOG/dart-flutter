import 'package:flutter/material.dart';

class Assignment25 extends StatelessWidget {
  const Assignment25({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
              child: Image.asset(
            "assets/png-transparel.png",
            height: 200,
            width: 200,
          )),
          const Spacer(),
          Container(
            height: 100,
            width: 100,
            color: Colors.red,
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            height: 100,
            width: 100,
            color: Colors.blue,
          ),
          const SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}
