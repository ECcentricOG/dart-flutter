import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:state_management/provider/model_class.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Provider"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(Provider.of<ProviderModel>(context).name),
          const SizedBox(
            height: 10,
          ),
          Text(Provider.of<ProviderModel>(context).age.toString()),
        ],
      ),
    );
  }
}
