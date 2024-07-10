import 'package:flutter/material.dart';

class Assignment59 extends StatefulWidget {
  const Assignment59({super.key});

  @override
  State<Assignment59> createState() => _Assignment59State();
}

class _Assignment59State extends State<Assignment59> {
  var name = TextEditingController();
  var college = TextEditingController();
  final formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          formFill(),
          const SizedBox(
            height: 20,
          ),
          displayInfo(),
        ],
      ),
    );
  }

  //Form method to form fill
  Form formFill() {
    return Form(
      key: formKey,
      child: Center(
        child: Column(
          children: [
            const SizedBox(
              height: 50,
            ),
            SizedBox(
              height: 80,
              width: 300,
              child: TextFormField(
                validator: (value) {
                  if (value.toString().isEmpty) {
                    return "Enter your name";
                  } else {
                    return null;
                  }
                },
                controller: name,
                decoration: InputDecoration(
                  labelText: "Name",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            SizedBox(
              height: 80,
              width: 300,
              child: TextFormField(
                validator: (value) {
                  if (value.toString().isEmpty) {
                    return "Enter your college";
                  } else {
                    return null;
                  }
                },
                controller: college,
                decoration: InputDecoration(
                  labelText: "College",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            ElevatedButton(
              onPressed: () {
                bool isValid = formKey.currentState!.validate();
                isValid
                    ? list.add(Info(name: name.text, college: college.text))
                    : null;

                setState(() {
                  name.clear();
                  college.clear();
                });
              },
              child: const Text("Submit"),
            ),
          ],
        ),
      ),
    );
  }
}

SizedBox displayInfo() {
  return SizedBox(
    height: 300,
    width: 500,
    child: ListView.builder(
      itemCount: list.length,
      itemBuilder: (context, index) {
        return Container(
          margin: const EdgeInsets.all(10),
          height: 80,
          width: 400,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            boxShadow: const [
              BoxShadow(
                color: Colors.red,
                offset: Offset(3, 5),
                spreadRadius: 3,
                blurRadius: 3,
              )
            ],
            border: Border.all(
              color: Colors.deepOrange,
              width: 2,
            ),
            gradient: const LinearGradient(
              colors: [
                Colors.orangeAccent,
                Colors.yellowAccent,
                Colors.orangeAccent,
              ],
            ),
          ),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text("${list[index].name}"),
                Text("${list[index].college}"),
              ],
            ),
          ),
        );
      },
    ),
  );
}

List<Info> list = [];

class Info {
  final String? name;
  final String? college;

  const Info({required this.college, required this.name});
}
