import 'package:flutter/material.dart';

class Assignment23 extends StatelessWidget {
  const Assignment23({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(3),
              height: 150,
              width: 150,
              decoration: const BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    spreadRadius: 1,
                    color: Colors.red,
                  ),
                ],
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
              ),
              child: Image.asset("assets/png-transparel.png"),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text("ECcentricOG"),
          ],
        ),
      ),
    );
  }
}
