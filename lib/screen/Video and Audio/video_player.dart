import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sampann_app/screen/dashboard/bottom_navigation.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class VideoPlayerScreen extends StatefulWidget {
  const VideoPlayerScreen({super.key});

  @override
  State<VideoPlayerScreen> createState() => _VideoPlayerScreenState();
}

class _VideoPlayerScreenState extends State<VideoPlayerScreen> {
  final String videoUrl = "https://youtu.be/ycxuUzgxzLc?si=mlnGaIx2Fz_-fT75";
  late YoutubePlayerController _controller;
  @override
  void initState() {
    final videoId = YoutubePlayer.convertUrlToId(videoUrl);
    _controller = YoutubePlayerController(
      initialVideoId: videoId!,
      flags: const YoutubePlayerFlags(
        autoPlay: false,
      ),
    );

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const MyBottomNavBar(),
      body: ListView(
        children: [
          YoutubePlayer(
            controller: _controller,
            showVideoProgressIndicator: true,
          ),
          const SizedBox(
            height: 8,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: Get.width * 0.09),
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: Get.width * 0.048, vertical: Get.width * 0.064),
                child: Column(
                  children: [
                    const Text(
                      "Pranayama Breathing",
                      style: TextStyle(
                        fontFamily: "AlegreyaSans",
                        fontSize: 25,
                        color: Color.fromRGBO(0, 0, 0, 1),
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    const Text(
                      "Naadi shuddhi Pranayama",
                      style: TextStyle(
                        fontFamily: "AlegreyaSans",
                        fontSize: 14,
                        color: Color.fromRGBO(8, 78, 140, 1),
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    const Text(
                      "By: Painting with Passion",
                      style: TextStyle(
                        fontFamily: "AlegreyaSans",
                        fontSize: 12,
                        color: Color.fromRGBO(8, 78, 140, 1),
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Text(
                      "1min",
                      style: GoogleFonts.epilogue(
                        textStyle: const TextStyle(
                          fontFamily: "AlegreyaSans",
                          fontSize: 16,
                          color: Color.fromRGBO(8, 78, 140, 1),
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 250,
          ),
          Container(
            height: Get.height * 0.05,
            margin: EdgeInsets.symmetric(horizontal: Get.width * 0.31),
            decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(60))),
            child: Directionality(
              textDirection: TextDirection.rtl,
              child: ElevatedButton.icon(
                style: ButtonStyle(
                  backgroundColor: const MaterialStatePropertyAll(
                    Color.fromRGBO(8, 78, 140, 1),
                  ),
                  shape: MaterialStateProperty.all(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                ),
                onPressed: () {},
                label: const Text(
                  "Next Vyayama",
                  maxLines: 1,
                  style: TextStyle(
                    fontFamily: "AlegreyaSans",
                    fontWeight: FontWeight.w500,
                    fontSize: 15,
                    color: Color.fromRGBO(255, 255, 255, 1),
                  ),
                ),
                icon: const Icon(
                  Icons.arrow_circle_right_outlined,
                  color: Color.fromRGBO(255, 255, 255, 1),
                  size: 16,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
