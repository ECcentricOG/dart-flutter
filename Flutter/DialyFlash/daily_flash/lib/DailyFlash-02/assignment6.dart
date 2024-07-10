import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Assignment6 extends StatelessWidget {
  const Assignment6({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Container(
          height: 200,
          width: 200,
          decoration: const BoxDecoration(
              border: Border.symmetric(
                horizontal: BorderSide(
                  color: Colors.red,
                ),
                vertical: BorderSide(
                  color: Colors.red,
                ),
              ),
              borderRadius: BorderRadius.all(
                Radius.circular(20),
              )),
          child: const Center(
            child: Text("ECcentricOG"),
          ),
        ),
      ),
    );
  }
}
