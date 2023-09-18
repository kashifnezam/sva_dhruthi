import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sampann_app/debug_page/my_sidebar.dart';
import 'package:sampann_app/question_screen/Quiz/quiz.dart';
import 'package:sampann_app/screen/landing_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../authorization/auth.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    operations();
  }

// ---------Function to switch pages------
  operations() async {
    User? user = FirebaseAuth.instance.currentUser;
    if (user != null) {
      Timer(const Duration(seconds: 2), () {
        Get.off(() => const HomeWithSideBar());
      });
    } else {
      await getToken();
      debugPrint("tokken: $token");

      if (token != "") {
        Timer(const Duration(seconds: 2), () {
          Get.off(() => const LandingScreen());
        });
      } else {
        Timer(const Duration(seconds: 2), () {
          Get.off(() => const QuizScreen());
        });
      }
    }
  }

// --------- Get Token------------
  Future<String> getToken() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();

    setState(() {
      token = prefs.getString("token") ?? "";
    });

    return token;
  }

  //  -------Refresh Token
  //---
  //--

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
