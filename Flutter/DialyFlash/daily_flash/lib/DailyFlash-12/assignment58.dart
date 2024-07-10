// ignore_for_file: unused_local_variable

import 'package:flutter/material.dart';

class Assignment58 extends StatefulWidget {
  const Assignment58({super.key});

  @override
  State<Assignment58> createState() => _Assignment58State();
}

class _Assignment58State extends State<Assignment58> {
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Form(
          key: formKey,
          child: Column(
            children: [
              const SizedBox(
                height: 50,
              ),
              SizedBox(
                height: 80,
                width: 300,
                child: TextFormField(
                  key: const ValueKey('name'),
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    labelText: "Enter your name",
                  ),
                  validator: (value) {
                    if (value.toString().isEmpty) {
                      return "Enter your name";
                    } else {
                      return null;
                    }
                  },
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              SizedBox(
                height: 80,
                width: 300,
                child: TextFormField(
                  key: const ValueKey('college'),
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    labelText: "Enter your college",
                  ),
                  validator: (value) {
                    if (value.toString().isEmpty) {
                      return "Enter your college";
                    } else {
                      return null;
                    }
                  },
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              ElevatedButton(
                onPressed: () {
                  formKey.currentState!.validate();
                },
                child: const Text("Submit"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
