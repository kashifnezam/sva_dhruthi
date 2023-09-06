import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:sampann_app/screen/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData(fontFamily: 'Alegreya'),
      debugShowCheckedModeBanner: false,
      title: "Sampann",
      home: const SplashScreen(),
    );
  }
}
