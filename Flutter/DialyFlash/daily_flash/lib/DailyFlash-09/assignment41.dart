import 'package:flutter/material.dart';

class Assignment41 extends StatelessWidget {
  const Assignment41({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          shrinkWrap: true,
          itemCount: 5,
          itemBuilder: (context, index) {
            return Container(
              margin: const EdgeInsets.all(10),
              height: 60,
              width: 60,
              color: Colors.blue,
            );
          },
        ),
      ),
    );
  }
}
