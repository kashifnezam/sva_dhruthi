import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sampann_app/question_screen/Quiz/quiz.dart';
import 'package:sampann_app/screen/home_screen.dart';
import 'package:sampann_app/screen/landing_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

String token = "";
class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  
  @override
  void initState() {
    super.initState();
    User? user = FirebaseAuth.instance.currentUser;
    if (user != null) {
      Timer(const Duration(seconds: 2), () {
        Get.off(() => const HomePage());
      });
    } else {
      getToken();
      if (token != "") {
        Timer(const Duration(seconds: 2), () {
        Get.off(() => const LandingScreen());
      });
      }else{
        Timer(const Duration(seconds: 2), () {
        Get.off(() => const QuizScreen());
      });
      }
    }
  }

// --------- Generate Token------------
  Future<void> generateToken() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString("token", token);
  }

// --------- Get Token------------
  Future<void> getToken() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    token = prefs.getString("token")!;
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
