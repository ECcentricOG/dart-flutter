import 'package:flutter/material.dart';

class Assignment43 extends StatelessWidget {
  const Assignment43({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) => Container(
          height: 280,
          margin: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            border: Border.all(),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                height: 80,
                width: 80,
                decoration: BoxDecoration(
                  border: Border.all(),
                  borderRadius: const BorderRadius.all(
                    Radius.circular(20),
                  ),
                  image: const DecorationImage(
                    image: AssetImage("assets/png-transparel.png"),
                  ),
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    margin: const EdgeInsets.all(5),
                    height: 70,
                    width: 120,
                    decoration: BoxDecoration(
                      border: Border.all(),
                      borderRadius: const BorderRadius.all(
                        Radius.circular(20),
                      ),
                    ),
                    child: const Center(
                      child: Text("Tobi"),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.all(5),
                    height: 70,
                    width: 120,
                    decoration: BoxDecoration(
                      border: Border.all(),
                      borderRadius: const BorderRadius.all(
                        Radius.circular(20),
                      ),
                    ),
                    child: const Center(
                      child: Text("Andrew"),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.all(5),
                    height: 70,
                    width: 120,
                    decoration: BoxDecoration(
                      border: Border.all(),
                      borderRadius: const BorderRadius.all(
                        Radius.circular(20),
                      ),
                    ),
                    child: const Center(
                      child: Text("Tom"),
                    ),
                  ),
                ],
              ),
              Container(
                height: 80,
                width: 80,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(),
                ),
                child: TextButton(
                  onPressed: () {},
                  autofocus: false,
                  child: const Icon(Icons.done),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
