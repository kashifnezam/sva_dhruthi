import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sva_dhruthi/screen/landing_page.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 2), () {
      Get.off(() => const LandingScreen());
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Set bg to blue
      backgroundColor: const Color.fromRGBO(37, 193, 208, 1),
      body: Column(
        children: [
          Stack(
            alignment: Alignment.bottomCenter,
            children: [
              Container(
                height: 435,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                        'assets/icons/BGCircle.png'), // Replace with your image path
                    fit: BoxFit.cover,
                    // This ensures the image covers the entire body
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Image(
                  image: AssetImage("assets/icons/logoS.png"),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
