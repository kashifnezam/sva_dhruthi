import 'package:flutter/material.dart';
import 'package:sampann_app/screen/chatbot/sidebar.dart';
import 'package:sampann_app/screen/home_screen.dart';

class HomeWithSideBar extends StatelessWidget {
  const HomeWithSideBar({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      
      body: Stack(
        children: [
          Sidebar(),
          HomePage(),
        ],
      ),
    );
  }
}
