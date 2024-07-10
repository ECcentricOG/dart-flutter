import 'package:flutter/material.dart';

class Assignment37 extends StatelessWidget {
  const Assignment37({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            Column(
              children: [
                SizedBox(
                  height: 200,
                  width: 150,
                  child: Image.asset(
                    "assets/burger.png",
                    fit: BoxFit.fill,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text("Burgirrr"),
              ],
            ),
            const SizedBox(
              width: 20,
            ),
            Column(
              children: [
                SizedBox(
                  height: 200,
                  width: 150,
                  child: Image.asset(
                    "assets/cupcake.jpeg",
                    fit: BoxFit.fill,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text("Cup Cake"),
              ],
            ),
            const SizedBox(
              width: 20,
            ),
            Column(
              children: [
                SizedBox(
                  height: 200,
                  width: 150,
                  child: Image.asset(
                    "assets/fries.png",
                    fit: BoxFit.fill,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text("Fries"),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
