import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Assignment39 extends StatelessWidget {
  const Assignment39({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView.builder(
        itemCount: 10,
        itemBuilder: (contetx, index) {
          return Container(
            margin: const EdgeInsets.all(10),
            height: 100,
            child: Row(
              children: [
                Container(
                  height: 50,
                  width: 50,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: AssetImage(
                        "assets/png-transparel.png",
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                const Text(
                  "Title",
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
