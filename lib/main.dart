import 'package:flutter/material.dart';
import 'package:redfire/screens/login_screen.dart';
import 'package:redfire/theme/pallete.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'RedFire',
        theme: Pallete.darkModeAppTheme,
        home: const LoginScreen());
  }
}
