import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:state_management/proxy_provider/lgoin.dart';
import 'package:state_management/proxy_provider/screen.dart';
import 'package:state_management/proxy_provider/user.dart';
// import 'package:state_management/consumer/app.dart';
// import 'package:state_management/consumer/cunsumer_model.dart';

void main() {
  runApp(const MyApp());
}

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MultiProvider(
//       providers: [
//         Provider(
//           create: (context) => const Player(name: "Leo Messi", jerNo: 18),
//         ),
//         ChangeNotifierProvider(
//           create: (context) => Statistic(goals: 845, assists: 325),
//         ),
//       ],
//       child: const MaterialApp(
//         debugShowCheckedModeBanner: false,
//         home: ConsumerApp(),
//       ),
//     );
//   }
// }

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) {
            return Login(
              password: "oyoymxd",
              username: "Sasta",
            );
          },
        ),
        ChangeNotifierProxyProvider<Login, User>(
          create: (context) {
            return User(
              username: Provider.of<Login>(context, listen: false).username,
              password: Provider.of<Login>(context, listen: false).password,
            );
          },
          update: (context, login, user) {
            return User(
              id: 56,
              name: "Umesh",
              username: login.username,
              password: login.password,
            );
          },
        ),
      ],
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Screen(),
      ),
    );
  }
}
