import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_state_management/resources/routes/app_routes.dart';
import 'package:getx_state_management/screens/splash_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      themeMode: ThemeMode.light,
      debugShowCheckedModeBanner: false,
      home: const SplashScreen(),
      getPages: AppRoutes.getRoutes(),
    );
  }
}
