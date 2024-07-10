import 'package:flutter/material.dart';

class Assignment36 extends StatelessWidget {
  const Assignment36({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Container(
            margin: const EdgeInsets.all(10),
            height: 100,
            width: 100,
            decoration: BoxDecoration(
              color: Colors.blueGrey.withOpacity(0.5),
              shape: BoxShape.circle,
            ),
          ),
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                width: 120,
                height: 150,
                color: Colors.yellow.withOpacity(0.5),
              ),
              Container(
                width: 120,
                height: 150,
                color: Colors.red.withOpacity(0.5),
              ),
            ],
          ),
          Container(
            height: 100,
            width: 275,
            color: Colors.orange.withOpacity(0.5),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                width: 120,
                height: 150,
                color: Colors.purple.withOpacity(0.5),
              ),
              Container(
                width: 120,
                height: 150,
                color: Colors.blue.withOpacity(0.5),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
