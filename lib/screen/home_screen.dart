import 'package:flutter/material.dart';
import 'package:sva_dhruthi/items/card.dart';
import 'package:sva_dhruthi/items/exercises.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // floatingActionButton: Icon(Icons.chat),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 60),
        children: [
          //  --------- Title Bar ---------------
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image(
                height: 20,
                image: AssetImage("assets/icons/menu.png"),
              ),
              ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(100)),
                  child: Image(
                    height: 40,
                    image: AssetImage("assets/images/logo.jpg"),
                  )),
              ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(100)),
                child: Image(
                  height: 40,
                  image: AssetImage("assets/images/dp.jpg"),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 40,
          ),
          Text(
            textAlign: TextAlign.center,
            "Welcome, Uma!",
            style: TextStyle(
              fontSize: 30,
              color: Colors.blue[800],
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            textAlign: TextAlign.center,
            "How are you feeling today ?",
            style: TextStyle(fontSize: 18, color: Colors.blue[800]),
          ),
          const SizedBox(
            height: 30,
          ),
          const Card1(
            title: "What am I dealing with?",
            subTitle:
                "Learning about your disease and its challenges help you to deal with it!",
            bgColor: Colors.white,
            stickerAdd: "assets/stickers/sticker2.jpg",
          ),
          const SizedBox(
            height: 30,
          ),

          Text(
            "Try Something new today!",
            style: TextStyle(fontSize: 25, color: Colors.blue[900]),
          ),
          const SizedBox(
            height: 10,
          ),
          const Text(
            "Studies has shown trying new technique to improve your mental health also helps in dealing with other challenges in life! ",
            style: TextStyle(fontSize: 13, color: Colors.black87),
          ),
          const SizedBox(
            height: 20,
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconsFile(caption: "Yoga", iconAdd: "assets/icons/yoga.png"),
              IconsFile(
                  caption: "Meditation",
                  iconAdd: "assets/icons/meditation.png"),
              IconsFile(caption: "Mudra", iconAdd: "assets/icons/mudra.png"),
              IconsFile(
                  caption: "Exercises", iconAdd: "assets/icons/exercise.png"),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconsFile(caption: "Music", iconAdd: "assets/icons/music.png"),
              SizedBox(
                width: 20,
              ),
              IconsFile(caption: "Pranayama", iconAdd: "assets/icons/yoga.png"),
            ],
          ),

          const SizedBox(
            height: 20,
          ),
          Card1(
            title: "Meet the Community...",
            subTitle:
                "Knowing that we are not alone in this journey, help us and cope up and reach oiur goal soon!",
            bgColor: Colors.yellow.shade50,
            stickerAdd: "assets/stickers/sticker3.jpg",
          ),
          const SizedBox(
            height: 20,
          ),
          Card1(
            title: "Book an appointment!",
            subTitle:
                "Other than Doctors, There are many healthcare professional to help you",
            bgColor: Colors.green.shade50,
            stickerAdd: "assets/stickers/sticker1.jpg",
          ),
        ],
      ),
    );
  }
}
