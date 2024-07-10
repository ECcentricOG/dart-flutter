import 'package:flutter/material.dart';

class Assignment22 extends StatelessWidget {
  const Assignment22({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: 100,
            width: 100,
            child: Image.asset("assets/png-transparel.png"),
          ),
          Container(
            height: 100,
            width: 100,
            child: Image.asset("assets/png-transparel.png"),
          ),
          Container(
            height: 100,
            width: 100,
            child: Image.asset("assets/png-transparel.png"),
          ),
        ],
      ),
    );
  }
}
