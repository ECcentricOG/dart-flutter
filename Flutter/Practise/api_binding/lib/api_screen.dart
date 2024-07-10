import 'dart:convert';
import 'package:api_binding/model.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class APIScreen extends StatefulWidget {
  const APIScreen({super.key});

  @override
  State<APIScreen> createState() => _APIScreenState();
}

class _APIScreenState extends State<APIScreen> {
  List<Phone> list = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("API"),
      ),
      body: Column(
        children: [
          ListView.builder(
            shrinkWrap: true,
            itemCount: list.length,
            itemBuilder: (context, index) {
              return Card(
                child: Column(
                  children: [
                    Text("${list[index].id}"),
                    Text("${list[index].name}"),
                  ],
                ),
              );
            },
          ),
          ElevatedButton(
            onPressed: () {
              setState(() {
                fetchData();
              });
            },
            child: const Text("Press me"),
          ),
        ],
      ),
    );
  }

  fetchData() async {
    Uri url = Uri.parse("https://api.restful-api.dev/objects");
    http.Response response = await http.get(url);
    List<dynamic> jsonData = jsonDecode(response.body);

    for (int i = 0; i < jsonData.length; i++) {
      Phone p = Phone.fromJson(jsonData[i]);
      list.add(p);
      setState(() {});
    }
  }
}
