import 'package:flutter/material.dart';

class Assignment29 extends StatelessWidget {
  const Assignment29({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(10),
          width: 400,
          height: 200,
          decoration: BoxDecoration(
            border: Border.all(width: 2),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                padding: const EdgeInsets.all(20),
                width: 170,
                height: 130,
                decoration: BoxDecoration(
                  border: Border.all(width: 2),
                ),
                child: Container(
                  color: Colors.red,
                  width: 140,
                  height: 100,
                ),
              ),
              const SizedBox(
                width: 20,
              ),
              Container(
                padding: const EdgeInsets.all(20),
                width: 170,
                height: 130,
                decoration: BoxDecoration(
                  border: Border.all(width: 2),
                ),
                child: Container(
                  color: Colors.blue,
                  width: 140,
                  height: 100,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
