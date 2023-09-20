import 'package:flutter/material.dart';
import 'package:sampann_app/services/tools.dart';

class MyBottomNavBar extends StatefulWidget {
  const MyBottomNavBar({super.key});

  @override
  State<MyBottomNavBar> createState() => _MyBottomNavBarState();
}

class _MyBottomNavBarState extends State<MyBottomNavBar> {
  @override
  Widget build(BuildContext context) {
    Color bgColor = const Color.fromRGBO(37, 51, 52, 1);
    bottomSystemColor(color: bgColor);
    return BottomNavigationBar(
      iconSize: 24,
      showSelectedLabels: false,
      showUnselectedLabels: false,
      type: BottomNavigationBarType.fixed,
      backgroundColor: bgColor,
      selectedItemColor: Colors.white,
      unselectedItemColor: Colors.white70,
      items: const [
        BottomNavigationBarItem(
          icon: Image(
              height: 32,
              width: 32,
              image: AssetImage(
                "assets/icons/logoSwhite.png",
              )),
          label: "Home",
        ),
        BottomNavigationBarItem(icon: Icon(Icons.trending_up), label: "Work"),
        BottomNavigationBarItem(
            icon: Icon(Icons.group_outlined), label: "Home"),
        BottomNavigationBarItem(icon: Icon(Icons.search), label: "Work"),
      ],
    );
  }
}
