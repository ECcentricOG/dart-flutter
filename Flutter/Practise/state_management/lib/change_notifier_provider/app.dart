import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:state_management/change_notifier_provider/model_class.dart';

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("ChangeNotifierProvider"),
      ),
      body: Center(
        child: Column(
          children: [
            Text(Provider.of<Information>(
              context,
            ).name),
            const SizedBox(
              height: 20,
            ),
            Text("${Provider.of<Information>(context).age}"),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
                onPressed: () {
                  Provider.of<Information>(context, listen: false)
                      .updateInfo(name: "ECcentricOG", age: 18);
                },
                child: const Text("Change Info")),
          ],
        ),
      ),
    );
  }
}
