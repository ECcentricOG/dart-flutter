import 'package:flutter/material.dart';

class Assignment45 extends StatefulWidget {
  const Assignment45({super.key});

  @override
  State<Assignment45> createState() => _Assignment45State();
}

class _Assignment45State extends State<Assignment45> {
  bool isPressed = false;
  TextEditingController name = TextEditingController();
  TextEditingController phone = TextEditingController();
  //method
  Container displayInfo() {
    return Container(
      height: 100,
      margin: const EdgeInsets.all(10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(name.text),
          Text(phone.text),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          TextField(
            controller: name,
            decoration: const InputDecoration(
              hintText: "Name",
            ),
          ),
          TextField(
            controller: phone,
            decoration: const InputDecoration(
              hintText: "Phone No",
            ),
          ),
          ElevatedButton(
            onPressed: () {
              isPressed = true;
              setState(() {});
            },
            child: const Text("Submit"),
          ),
          isPressed ? displayInfo() : const Text(""),
        ],
      ),
    );
  }
}
