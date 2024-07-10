import 'package:flutter/material.dart';

class Assignment20 extends StatefulWidget {
  const Assignment20({super.key});

  @override
  State<Assignment20> createState() => _Assignment20State();
}

class _Assignment20State extends State<Assignment20> {
  bool isLongPressed = false;
  Color changeColor() {
    if (isLongPressed) {
      return Colors.purple;
    } else {
      return Colors.transparent;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      floatingActionButton: FloatingActionButton(
        backgroundColor: changeColor(),
        onPressed: () {},
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: TextButton(
            onPressed: () {},
            onLongPress: () {
              isLongPressed = !isLongPressed;
              setState(() {});
            },
            child: const Icon(Icons.star_outline_rounded),
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
