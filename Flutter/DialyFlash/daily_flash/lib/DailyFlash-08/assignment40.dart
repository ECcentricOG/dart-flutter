import 'package:flutter/material.dart';

class Assignment40 extends StatefulWidget {
  const Assignment40({super.key});

  @override
  State<Assignment40> createState() => _Assignment40State();
}

class _Assignment40State extends State<Assignment40> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView.builder(
          itemCount: 10,
          itemBuilder: (context, index) {
            return Container(
              decoration: BoxDecoration(
                border: Border.all(),
              ),
              margin: const EdgeInsets.all(10),
              height: 100,
              child: Row(
                children: [
                  const Column(
                    children: [
                      Text("Title"),
                      SizedBox(height: 20),
                      Text("Description"),
                    ],
                  ),
                  const Spacer(),
                  Container(
                    margin: const EdgeInsets.all(10),
                    height: 50,
                    width: 50,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                    ),
                    child: TextButton(
                      onPressed: () {},
                      style: const ButtonStyle(
                        backgroundColor:
                            MaterialStatePropertyAll(Colors.purple),
                      ),
                      child: const Icon(Icons.add),
                    ),
                  ),
                ],
              ),
            );
          }),
    );
  }
}
