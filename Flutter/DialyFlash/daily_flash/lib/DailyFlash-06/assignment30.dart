import 'package:flutter/material.dart';

class Assignment30 extends StatefulWidget {
  const Assignment30({super.key});

  @override
  State<Assignment30> createState() => _Assignment30State();
}

class _Assignment30State extends State<Assignment30> {
  bool isColor1 = false;
  bool isColor2 = false;
  bool isColor3 = false;
  Color colorContainer(bool isTure) {
    if (isTure) {
      return Colors.red;
    } else {
      return Colors.white;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              height: 100,
              width: 200,
              decoration: BoxDecoration(
                border: Border.all(
                  width: 1,
                  color: Colors.black,
                ),
                color: colorContainer(isColor1),
              ),
              child: TextButton(
                autofocus: false,
                onPressed: () {
                  isColor1 = !isColor1;
                  setState(() {});
                },
                child: const Text(""),
              ),
            ),
            Container(
              height: 100,
              width: 200,
              decoration: BoxDecoration(
                border: Border.all(
                  width: 1,
                  color: Colors.black,
                ),
                color: colorContainer(isColor2),
              ),
              child: TextButton(
                onPressed: () {
                  isColor2 = !isColor2;
                  setState(() {});
                },
                child: const Text(""),
              ),
            ),
            Container(
              height: 100,
              width: 200,
              decoration: BoxDecoration(
                border: Border.all(
                  width: 1,
                  color: Colors.black,
                ),
                color: colorContainer(isColor3),
              ),
              child: TextButton(
                onPressed: () {
                  isColor3 = !isColor3;
                  setState(() {});
                },
                child: const Text(""),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
