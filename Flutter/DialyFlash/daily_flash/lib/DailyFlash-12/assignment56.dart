import 'package:flutter/material.dart';

class Assignment56 extends StatefulWidget {
  const Assignment56({super.key});

  @override
  State<Assignment56> createState() => _Assignment56State();
}

class _Assignment56State extends State<Assignment56> {
  bool isPassword = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: SizedBox(
          width: 300,
          child: TextField(
            obscureText: isPassword,
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              suffixIcon: IconButton(
                onPressed: () {
                  isPassword = !isPassword;
                  setState(() {});
                },
                icon: isPassword
                    ? const Icon(Icons.visibility)
                    : const Icon(Icons.visibility_off),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
