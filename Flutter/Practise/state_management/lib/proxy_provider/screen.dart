import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:state_management/proxy_provider/lgoin.dart';
import 'package:state_management/proxy_provider/user.dart';

class Screen extends StatefulWidget {
  const Screen({super.key});

  @override
  State<Screen> createState() => _ScreenState();
}

class _ScreenState extends State<Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Proxy Provider and ChangeNotifierProxyProvider"),
      ),
      body: ListView(
        shrinkWrap: true,
        children: [
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Consumer<User>(
                  builder: (context, value, child) {
                    return Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("${value.id}"),
                        const SizedBox(
                          height: 10,
                        ),
                        Text("${value.name}"),
                      ],
                    );
                  },
                ),
                const SizedBox(
                  height: 10,
                ),
                Consumer<Login>(
                  builder: (context, value, child) {
                    return Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(value.username),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(value.password),
                      ],
                    );
                  },
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          ElevatedButton(
            onPressed: () {
              Provider.of<Login>(context, listen: false)
                  .setUsername("ECcentricOG");
              Provider.of<Login>(context, listen: false)
                  .setPassword("12345678");
            },
            child: const Text("Change Login Info"),
          ),
          const SizedBox(
            height: 50,
          ),
          ElevatedButton(
            onPressed: () {
              Provider.of<User>(context, listen: false)
                  .setName("Umesh Vinayak Unde");
              Provider.of<User>(context, listen: false).setId(3);
            },
            child: const Text("Change User Info"),
          ),
        ],
      ),
    );
  }
}
