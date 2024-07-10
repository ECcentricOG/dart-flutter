import 'package:flutter/material.dart';

class Assignment31 extends StatelessWidget {
  const Assignment31({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              height: 100,
              width: 100,
              color: Colors.red,
            ),
            Container(
              height: 80,
              width: 80,
              color: Colors.blue,
            ),
            Container(
              height: 70,
              width: 80,
              color: Colors.yellow,
            ),
          ],
        ),
      ),
    );
  }
}
