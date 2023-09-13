import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sampann_app/screen/chatbot/chatbot_screen.dart';

class ChatBotLoading extends StatefulWidget {
  const ChatBotLoading({super.key});

  @override
  State<ChatBotLoading> createState() => _ChatBotLoadingState();
}

class _ChatBotLoadingState extends State<ChatBotLoading> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 1), () {
      Get.off(() => const ChatBot());
    });
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Padding(
        padding: EdgeInsets.only(top: 44, left: 29, right: 24),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(100)),
                  child: Image(
                    height: 35,
                    image: AssetImage("assets/icons/profilepic.png"),
                  ),
                ),
                ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(100)),
                  child: Image(
                    height: 31,
                    image: AssetImage("assets/icons/logoS.png"),
                  ),
                ),
                Image(
                  height: 21,
                  image: AssetImage("assets/icons/notification.png"),
                ),
              ],
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "Welcome to Sampann Chat",
                    style: TextStyle(
                      fontFamily: "AlegreyaSans",
                      fontSize: 25,
                      color: Color.fromRGBO(8, 78, 140, 1),
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  SizedBox(
                    height: 9,
                  ),
                  Text(
                    "Please wait, we are loading a personalized experience for you!",
                    style: TextStyle(
                      fontFamily: "AlegreyaSans",
                      fontSize: 14,
                      color: Color.fromRGBO(8, 78, 140, 1),
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  SizedBox(
                    height: 36,
                    width: 36,
                    child: CircularProgressIndicator(
                      color: Color.fromRGBO(8, 78, 140, 1),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
