import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sampann_app/screen/Video%20and%20Audio/video_player.dart';
import 'package:sampann_app/services/tools.dart';

class HolisticVyayaama extends StatelessWidget {
  const HolisticVyayaama({super.key});

  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> listData = [
      {
        "title": "Pranayama",
        "subTitle": "Breathing",
        "image": "assets/images/pranayama.png",
        "time": "1min",
        "page": () {
          Get.to(() => const VideoPlayerScreen());
        }
      },
      {
        "title": "Yoga",
        "subTitle": "Postures",
        "image": "assets/images/yoga.png",
        "time": "1min",
        "page": () {
          Get.to(() => const VideoPlayerScreen());
        }
      },
      {
        "title": "Mudra",
        "subTitle": "Postures",
        "image": "assets/images/mudra.png",
        "time": "1min",
        "page": () {
          Get.to(() => const VideoPlayerScreen());
        }
      },
      {
        "title": "Raaga",
        "subTitle": "Music therapy",
        "image": "assets/images/raaga.png",
        "time": "1min",
        "page": () {
          Get.to(() => const VideoPlayerScreen());
        }
      },
      {
        "title": "Meditation",
        "subTitle": "Connecting soul",
        "image": "assets/images/meditation.png",
        "time": "1min",
        "page": () {
          Get.to(() => const VideoPlayerScreen());
        }
      },
    ];
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              backNavigation(),
              const Text(
                "Holistic Vyayaama",
                style: TextStyle(
                  fontFamily: "AlegreyaSans",
                  fontSize: 20,
                  color: Color.fromRGBO(0, 0, 0, 1),
                  fontWeight: FontWeight.w700,
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              const Row(
                children: [
                  Text(
                    "Mind",
                    style: TextStyle(
                      fontFamily: "Alegreya",
                      fontSize: 20,
                      color: Color.fromRGBO(8, 78, 140, 1),
                      fontWeight: FontWeight.w400,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Opacity(
                    opacity: 0.5,
                    child: Text(
                      "Body",
                      style: TextStyle(
                        fontFamily: "Alegreya",
                        fontSize: 20,
                        color: Color.fromRGBO(0, 0, 0, 1),
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Opacity(
                    opacity: 0.5,
                    child: Text(
                      "Soul",
                      style: TextStyle(
                        fontFamily: "Alegreya",
                        fontSize: 20,
                        color: Color.fromRGBO(0, 0, 0, 1),
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              // ------------This is List of Videos--------------
              Expanded(
                child: ListView.builder(
                  itemCount: listData.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(bottom: 10.0),
                      child: Card(
                        shape: ContinuousRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                        child: Column(
                          children: [
                            Image(
                              width: 600,
                              height: 100,
                              fit: BoxFit.fitWidth,
                              image: AssetImage(
                                listData[index]["image"],
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 12),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      Text(
                                        listData[index]["title"],
                                        style: const TextStyle(
                                          fontFamily: "AlegreyaSans",
                                          fontSize: 20,
                                          color: Color.fromRGBO(8, 78, 140, 1),
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                      const SizedBox(
                                        width: 4,
                                      ),
                                      Text(
                                        listData[index]["subTitle"],
                                        style: const TextStyle(
                                          fontFamily: "AlegreyaSans",
                                          fontSize: 12,
                                          color:
                                              Color.fromRGBO(163, 153, 153, 1),
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Opacity(
                                        opacity: 0.5,
                                        child: Text(
                                          listData[index]["time"],
                                          style: GoogleFonts.poppins(
                                            textStyle: const TextStyle(
                                              fontSize: 13,
                                              color:
                                                  Color.fromRGBO(8, 78, 140, 1),
                                              fontWeight: FontWeight.w400,
                                            ),
                                          ),
                                        ),
                                      ),
                                      IconButton(
                                        icon: const Icon(
                                          Icons.play_circle_outlined,
                                          size: 16,
                                          color: Color.fromRGBO(8, 78, 140, 1),
                                        ),
                                        onPressed: listData[index]["page"],
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    );
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
