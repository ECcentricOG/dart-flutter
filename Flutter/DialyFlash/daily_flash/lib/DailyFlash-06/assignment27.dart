import 'package:flutter/material.dart';

class Assignment27 extends StatelessWidget {
  const Assignment27({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          children: [
            Container(
              width: 250,
              height: 400,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.purple),
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(30),
                  bottomRight: Radius.circular(30),
                ),
                image: const DecorationImage(
                    image: AssetImage("assets/png-transparel.png"),
                    fit: BoxFit.cover),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            ElevatedButton(
              onPressed: () {},
              style: const ButtonStyle(
                backgroundColor: MaterialStatePropertyAll(Colors.purple),
                fixedSize: MaterialStatePropertyAll(Size(250, 70)),
              ),
              child: const Text(
                "Add to Cart",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
