import 'package:flutter/material.dart';

import '../../items/card.dart';
import 'home_screen.dart';

class OldHomeScreen extends StatefulWidget {
  const OldHomeScreen({super.key});

  @override
  State<OldHomeScreen> createState() => _OldHomeScreenState();
}

class _OldHomeScreenState extends State<OldHomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // body: ListView(
        //   physics: const BouncingScrollPhysics(),
        //   padding: const EdgeInsets.only(top: 44, left: 29, right: 24),
        //   children: [
        //     //  --------- Title Bar ---------------
        //     Row(
        //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //       children: [
        //         isSidebar
        //             ? const Icon(
        //                 Icons.close,
        //                 size: 27,
        //                 color: Color.fromRGBO(46, 46, 46, 1),
        //               )
        //             : GestureDetector(
        //                 onTap: () {
        //                   setState(() {
        //                     isSidebar = true;
        //                   });
        //                 },
        //                 child: const ClipRRect(
        //                   borderRadius: BorderRadius.all(Radius.circular(100)),
        //                   child: Image(
        //                     height: 35,
        //                     image: AssetImage("assets/icons/profilepic.png"),
        //                   ),
        //                 ),
        //               ),
        //         const ClipRRect(
        //           borderRadius: BorderRadius.all(Radius.circular(100)),
        //           child: Image(
        //             height: 31,
        //             image: AssetImage("assets/icons/logoS.png"),
        //           ),
        //         ),
        //         const Image(
        //           height: 21,
        //           image: AssetImage("assets/icons/notification.png"),
        //         ),
        //       ],
        //     ),
        //     const SizedBox(
        //       height: 29,
        //     ),
        //     const Text(
        //       "Be in-charge of your health, Uma!",
        //       style: TextStyle(
        //         fontFamily: "AlegreyaSans",
        //         fontSize: 25,
        //         color: Color.fromRGBO(55, 27, 52, 1),
        //         fontWeight: FontWeight.w700,
        //       ),
        //     ),
        //     const SizedBox(
        //       height: 20,
        //     ),
        //     const Text(
        //       "How are you feeling today ?",
        //       style: TextStyle(
        //         fontFamily: "AlegreyaSans",
        //         fontSize: 12,
        //         color: Color.fromRGBO(55, 27, 52, 1),
        //         fontWeight: FontWeight.w500,
        //       ),
        //     ),
        //     const SizedBox(
        //       height: 16,
        //     ),
        //     SingleChildScrollView(
        //       scrollDirection: Axis.horizontal,
        //       child: Row(
        //         children: [
        //           emotionCard(
        //               bgColor: const Color.fromRGBO(254, 206, 206, 1),
        //               textEmotion: "Happy",
        //               stickerLocation: "assets/stickers/Happy.png"),
        //           const SizedBox(
        //             width: 26,
        //           ),
        //           emotionCard(
        //               bgColor: const Color.fromRGBO(222, 254, 191, 1),
        //               textEmotion: "Angry",
        //               stickerLocation: "assets/stickers/angry.png"),
        //           const SizedBox(
        //             width: 26,
        //           ),
        //           emotionCard(
        //               bgColor: const Color.fromRGBO(254, 206, 206, 1),
        //               textEmotion: "Happy",
        //               stickerLocation: "assets/stickers/Happy.png"),
        //           const SizedBox(
        //             width: 26,
        //           ),
        //           emotionCard(
        //               bgColor: const Color.fromRGBO(222, 254, 191, 1),
        //               textEmotion: "Angry",
        //               stickerLocation: "assets/stickers/angry.png"),
        //           const SizedBox(
        //             width: 26,
        //           ),
        //           emotionCard(
        //               bgColor: const Color.fromRGBO(254, 206, 206, 1),
        //               textEmotion: "Happy",
        //               stickerLocation: "assets/stickers/Happy.png"),
        //           const SizedBox(
        //             width: 26,
        //           ),
        //           emotionCard(
        //               bgColor: const Color.fromRGBO(222, 254, 191, 1),
        //               textEmotion: "Angry",
        //               stickerLocation: "assets/stickers/angry.png"),
        //           const SizedBox(
        //             width: 26,
        //           ),
        //         ],
        //       ),
        //     ),
        //     const SizedBox(
        //       height: 30,
        //     ),

        //     // -----First Card--------
        //     CustomCard(
        //       title: "Know My Prakruti",
        //       subTitle:
        //           "Prakriti & Propensity for your health challenge, helps to go right direction!",
        //       bgColor: Colors.white,
        //       stickerAdd: "assets/stickers/dealing.png",
        //       bgBtnColor: const Color.fromRGBO(8, 78, 140, 1),
        //       btnText: "Take a Quiz",
        //       isIcon: false,
        //       onPress: () {},
        //     ),
        //     const SizedBox(
        //       height: 20,
        //     ),

        //     const SizedBox(
        //       height: 20,
        //     ),

        //     const SizedBox(
        //       height: 20,
        //     ),

        //     // ---------Second Card---------
        //     CustomCard(
        //       title: "Holistic Vyayaama",
        //       subTitle:
        //           "Knowing that we are not alone in this journey, help us and cope up and reach oiur goal soon!",
        //       bgColor: const Color.fromRGBO(252, 215, 76, 1),
        //       stickerAdd: "assets/stickers/community.png",
        //       bgBtnColor: Colors.white,
        //       btnText: "Check it out!",
        //       isIcon: false,
        //       onPress: () {},
        //     ),
        //     const SizedBox(
        //       height: 20,
        //     ),
        //     // ---------Third Card---------
        //     CustomCard(
        //       title: "Aahaara",
        //       subTitle: "Meal of the Day! Wholesome and Tasty!",
        //       bgColor: const Color.fromRGBO(248, 255, 207, 1),
        //       stickerAdd: "assets/stickers/appointment.png",
        //       bgBtnColor: const Color.fromRGBO(252, 215, 76, 1),
        //       btnText: "Check it out!",
        //       isIcon: false,
        //       onPress: () {

        //       },
        //     ),
        //     const SizedBox(
        //       height: 20,
        //     ),
        //     // ---------Fourth Card---------
        //     SizedBox(
        //       width: 327,
        //       height: 130,
        //       child: Card(
        //         shape: RoundedRectangleBorder(
        //           borderRadius: BorderRadius.circular(20),
        //         ),
        //         elevation: 0.5,
        //         color: const Color.fromRGBO(162, 244, 255, 1),
        //         child: const Padding(
        //           padding: EdgeInsets.all(25),
        //           child: Row(
        //             children: [
        //               Expanded(
        //                 child: Padding(
        //                   padding: EdgeInsets.only(right: 20.0),
        //                   child: Column(
        //                     mainAxisAlignment: MainAxisAlignment.center,
        //                     crossAxisAlignment: CrossAxisAlignment.start,
        //                     children: [
        //                       Text(
        //                         "Know my health benefits",
        //                         style: TextStyle(
        //                           fontFamily: "AlegreyaSans",
        //                           fontSize: 10,
        //                           color: Color.fromRGBO(37, 51, 52, 1),
        //                           fontWeight: FontWeight.w400,
        //                         ),
        //                       ),
        //                       Text(
        //                         "Am i eligible for Govt. benefits, Or i have insurance by Govt, If i have neither, where do I start?",
        //                         style: TextStyle(
        //                           fontFamily: "AlegreyaSans",
        //                           fontSize: 12,
        //                           color: Color.fromRGBO(0, 0, 0, 1),
        //                           fontWeight: FontWeight.w500,
        //                         ),
        //                       ),
        //                     ],
        //                   ),
        //                 ),
        //               ),
        //               CircleAvatar(
        //                 radius: 15,
        //                 backgroundColor: Colors.white,
        //                 child: Icon(
        //                   Icons.arrow_forward_outlined,
        //                   size: 20,
        //                   color: Colors.black,
        //                 ),
        //               )
        //             ],
        //           ),
        //         ),
        //       ),
        //     ),
        //     const SizedBox(
        //       height: 20,
        //     ),
        //   ],
        // ),

        );
  }

  Widget emotionCard(
      {required Color bgColor,
      required String textEmotion,
      required String stickerLocation}) {
    return Column(
      children: [
        Card(
          shape: ContinuousRectangleBorder(
              borderRadius: BorderRadius.circular(16)),
          color: bgColor,
          child: Padding(
            padding: const EdgeInsets.all(12),
            child: Image(image: AssetImage(stickerLocation)),
          ),
        ),
        Text(
          textEmotion,
          style: const TextStyle(
            fontFamily: "AlegreyaSans",
            fontSize: 12,
            color: Color.fromRGBO(130, 130, 130, 1),
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }
}
