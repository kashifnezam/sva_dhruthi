import 'package:flutter/material.dart';
import 'package:sampann_app/screen/chatbot/sidebar.dart';
import 'package:sampann_app/screen/home_screen.dart';

class MyNavigation extends StatefulWidget {
  const MyNavigation({super.key});

  @override
  State<MyNavigation> createState() => _MyNavigationState();
}

class _MyNavigationState extends State<MyNavigation> {
  int index = 0;
  final pages = [
    const HomePage(),
    const Sidebar(),
    const Sidebar(),
    const HomePage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[index],
      bottomNavigationBar: BottomNavigationBar(
        // showSelectedLabels: false,
        // showUnselectedLabels: false,
        backgroundColor: const Color.fromRGBO(0, 0, 0, 1),
        fixedColor: Colors.lightBlue,
        currentIndex: index,
        onTap: (int ind) {
          setState(() {
            index = ind;
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Image(
              height: 32,
              width: 32,
              image: AssetImage("assets/icons/logoS.png"),
            ),
            label: "Page1",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.trending_up,
              size: 32,
            ),
            label: "Page2",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.group_outlined,
              size: 32,
            ),
            label: "Page3",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.search,
              size: 32,
            ),
            label: "Page4",
          ),
        ],
      ),
    );
  }
}
