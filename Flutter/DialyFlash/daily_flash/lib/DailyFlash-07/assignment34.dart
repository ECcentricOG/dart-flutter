import 'package:flutter/material.dart';

class Assignment34 extends StatelessWidget {
  const Assignment34({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Row(
          children: [
            Container(
              height: 100,
              width: MediaQuery.of(context).size.width * 0.7,
              color: Colors.red,
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.2,
              height: 100,
              color: Colors.blue,
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.1,
              height: 100,
              color: Colors.yellow,
            ),
          ],
        ),
      ),
    );
  }
}
