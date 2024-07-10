import 'package:flutter/material.dart';

class Assignment57 extends StatefulWidget {
  const Assignment57({super.key});

  @override
  State<Assignment57> createState() => _Assignment57State();
}

class _Assignment57State extends State<Assignment57> {
  List<String> days = List.empty(growable: true);
  //var day = TextEditingController();
  String display() {
    String ans = "[ ";
    for (String d in days) {
      ans = ", $ans $d";
    }
    return "$ans ]";
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Center(
          child: Column(
            children: [
              TextField(
                //controller: day,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                onSubmitted: (value) {
                  days.add(value);
                  setState(() {});
                },
              ),
              const SizedBox(
                height: 20,
              ),
              Text(display()),
            ],
          ),
        ));
  }
}
