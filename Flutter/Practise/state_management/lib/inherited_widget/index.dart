import 'package:flutter/material.dart';
import 'package:state_management/inherited_widget/reveal_widget.dart';
import 'package:state_management/inherited_widget/shared_data.dart';

class IndexPage extends StatefulWidget {
  const IndexPage({super.key});

  @override
  State<IndexPage> createState() => _IndexPageState();
}

class _IndexPageState extends State<IndexPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Inherited Widget"),
        centerTitle: true,
        backgroundColor: Colors.deepPurpleAccent.withOpacity(0.7),
      ),
      body: Center(
        child: Reveal(name: SharedData.of(context).username),
      ),
    );
  }
}
