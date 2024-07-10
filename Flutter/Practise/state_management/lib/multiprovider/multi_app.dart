import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:state_management/multiprovider/model_classes.dart';

class MultiApp extends StatefulWidget {
  const MultiApp({super.key});

  @override
  State<MultiApp> createState() => _MultiAppState();
}

class _MultiAppState extends State<MultiApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Multiprovider"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(Provider.of<Employee>(context).empName),
            const SizedBox(
              height: 10,
            ),
            Text(Provider.of<Employee>(context).id.toString()),
            const SizedBox(
              height: 10,
            ),
            Text(Provider.of<Company>(context).name),
            const SizedBox(
              height: 10,
            ),
            Text(Provider.of<Company>(context).role),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
              onPressed: () {
                Provider.of<Company>(context, listen: false)
                    .change("ECcentricOG", "CTO");
              },
              child: const Text("Change"),
            ),
          ],
        ),
      ),
    );
  }
}
