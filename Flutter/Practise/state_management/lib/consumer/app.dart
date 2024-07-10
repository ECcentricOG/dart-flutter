import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:state_management/consumer/cunsumer_model.dart';

class ConsumerApp extends StatefulWidget {
  const ConsumerApp({super.key});

  @override
  State<ConsumerApp> createState() => _ConsumerAppState();
}

class _ConsumerAppState extends State<ConsumerApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Consumer"),
      ),
      body: Center(
        child: Column(
          children: [
            Text(Provider.of<Player>(context).name),
            const SizedBox(
              height: 20,
            ),
            Text(Provider.of<Player>(context).jerNo.toString()),
            const SizedBox(
              height: 20,
            ),
            Consumer(
              builder: (context, provider, child) => Column(
                children: [
                  Text(Provider.of<Statistic>(context).goals.toString()),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(Provider.of<Statistic>(context).assists.toString()),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                Provider.of<Statistic>(context, listen: false)
                    .updateData(900, 400);
              },
              child: const Text("Change"),
            ),
          ],
        ),
      ),
    );
  }
}
