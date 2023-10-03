import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sampann_app/items/card.dart';
import 'package:sampann_app/items/exercises.dart';
import 'package:sampann_app/screen/chatbot/chatbot_loading.dart';
import 'package:sampann_app/screen/dashboard/Food/avocado_toast.dart';
import 'package:sampann_app/screen/dashboard/Govt%20Benefit/govt_benefit.dart';
import 'package:sampann_app/screen/dashboard/Govt%20Benefit/holistic_vyayaama.dart';
import 'package:sampann_app/screen/question_screen/Quiz/quiz.dart';
import 'package:sampann_app/services/auth.dart';
import 'bottom_navigation.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

bool isSidebar = false;

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      transform: isSidebar
          ? Matrix4.translationValues(290, 180, 1)
          : Matrix4.translationValues(0, 0, 1)
        ..scale(isSidebar ? 0.72 : 1.00),
      duration: const Duration(milliseconds: 400),
      decoration: BoxDecoration(
          boxShadow: const [
            BoxShadow(
                blurRadius: 30,
                offset: Offset(-10, 1),
                spreadRadius: 0,
                color: Color.fromRGBO(0, 0, 0, 0.5))
          ],
          borderRadius: isSidebar ? BorderRadius.circular(40) : null,
          color: Colors.white),
      child: GestureDetector(
        onTap: () {
          setState(() {
            isSidebar = false;
          });
        },
        child: Scaffold(
          floatingActionButton: Padding(
            padding: const EdgeInsets.only(bottom: 44.0),
            child: FloatingActionButton(
              backgroundColor: Colors.transparent,
              onPressed: () {
                Get.to(() => const ChatBotLoading());
              },
              child: const Image(
                height: 54,
                image: AssetImage("assets/icons/botChatBtn.png"),
              ),
            ),
          ),
          floatingActionButtonLocation:
              FloatingActionButtonLocation.endContained,
          backgroundColor: Colors.transparent,
          bottomNavigationBar: !isSidebar ? const MyBottomNavBar() : null,
          body: isNewUser()
              ? ListView(
                  physics: !isSidebar
                      ? const BouncingScrollPhysics()
                      : const NeverScrollableScrollPhysics(),
                  padding: const EdgeInsets.only(top: 44, left: 29, right: 24),
                  children: [
                    //  --------- Title Bar ---------------
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        isSidebar
                            ? const Icon(
                                Icons.close,
                                size: 27,
                                color: Color.fromRGBO(46, 46, 46, 1),
                              )
                            : GestureDetector(
                                onTap: () {
                                  setState(() {
                                    isSidebar = true;
                                  });
                                },
                                child: const ClipRRect(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(100)),
                                  child: Image(
                                    height: 35,
                                    image: AssetImage(
                                        "assets/icons/profilepic.png"),
                                  ),
                                ),
                              ),
                        const ClipRRect(
                          borderRadius: BorderRadius.all(Radius.circular(100)),
                          child: Image(
                            height: 31,
                            image: AssetImage("assets/icons/logoS.png"),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              debugPrint("hello");
                              newUser = !newUser;
                            });
                          },
                          child: const Image(
                            height: 21,
                            image: AssetImage("assets/icons/notification.png"),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Text(
                      "Welcome, Uma!",
                      style: TextStyle(
                        fontFamily: "AlegreyaSans",
                        fontSize: 25,
                        color: Color.fromRGBO(55, 27, 52, 1),
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Padding(
                      padding: EdgeInsets.only(
                          top: 17, bottom: 17, right: 11, left: 17),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "You predominantly are of Vata prakruti",
                                  style: TextStyle(
                                    fontFamily: "AlegreyaSans",
                                    fontSize: 14,
                                    color: Color.fromRGBO(8, 78, 140, 1),
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                SizedBox(
                                  height: 7,
                                ),
                                Text(
                                  "*All recomendations from Sampann will be based on this analysis",
                                  style: TextStyle(
                                    fontFamily: "AlegreyaSans",
                                    fontSize: 12,
                                    color: Color.fromRGBO(37, 51, 52, 1),
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            width: 40,
                          ),
                          Image(
                            width: 44,
                            height: 44,
                            image: AssetImage("assets/icons/q4Result.png"),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),

                    // -----First Card--------
                    CustomCard(
                      title: "What am I dealing with?",
                      subTitle:
                          "Learning about your disease and its challenges help you to deal with it!",
                      bgColor: Colors.white,
                      stickerAdd: "assets/stickers/dealing.png",
                      bgBtnColor: const Color.fromRGBO(37, 193, 208, 1),
                      btnText: "Learn",
                      isIcon: true,
                      onPress: () {},
                    ),
                    const SizedBox(
                      height: 20,
                    ),

                    const Padding(
                      padding: EdgeInsets.only(left: 15.0),
                      child: Text(
                        "Try Something new today!",
                        style: TextStyle(
                          fontFamily: "AlegreyaSans",
                          fontSize: 20,
                          color: Color.fromRGBO(8, 78, 140, 1),
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 6,
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 15.0),
                      child: Text(
                        "Studies has shown trying new technique to improve your mental health also helps in dealing with other challenges in life! ",
                        style: TextStyle(
                          fontFamily: "AlegreyaSans",
                          fontSize: 12,
                          color: Color.fromRGBO(0, 0, 0, 1),
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        IconsFile(
                            caption: "Yoga", iconAdd: "assets/icons/yoga.png"),
                        IconsFile(
                            caption: "Meditation",
                            iconAdd: "assets/icons/meditation.png"),
                        IconsFile(
                            caption: "Mudra",
                            iconAdd: "assets/icons/mudra.png"),
                        IconsFile(
                            caption: "Exercises",
                            iconAdd: "assets/icons/exercise.png"),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        IconsFile(
                            caption: "Music",
                            iconAdd: "assets/icons/music.png"),
                        SizedBox(
                          width: 20,
                        ),
                        IconsFile(
                            caption: "Pranayama",
                            iconAdd: "assets/icons/yoga.png"),
                      ],
                    ),

                    const SizedBox(
                      height: 20,
                    ),

                    // ---------Second Card---------
                    CustomCard(
                      title: "Meet the Community...",
                      subTitle:
                          "Knowing that we are not alone in this journey, help us and cope up and reach oiur goal soon!",
                      bgColor: const Color.fromRGBO(248, 234, 226, 1),
                      stickerAdd: "assets/stickers/community.png",
                      bgBtnColor: const Color.fromRGBO(221, 142, 96, 1),
                      btnText: "Visit",
                      isIcon: false,
                      onPress: () {},
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    CustomCard(
                      title: "Book an appointment!",
                      subTitle:
                          "Other than Doctors, There are many healthcare professional to help you",
                      bgColor: const Color.fromRGBO(240, 255, 252, 1),
                      stickerAdd: "assets/stickers/appointment.png",
                      bgBtnColor: const Color.fromRGBO(37, 193, 208, 1),
                      btnText: "Find someone nearby",
                      isIcon: false,
                      onPress: () {},
                    ),
                  ],
                )
              :

              //------------------------ HomePage for Old User------------------

              ListView(
                  physics: const BouncingScrollPhysics(),
                  padding: const EdgeInsets.only(top: 44, left: 29, right: 24),
                  children: [
                    //  --------- Title Bar ---------------
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        isSidebar
                            ? const Icon(
                                Icons.close,
                                size: 27,
                                color: Color.fromRGBO(46, 46, 46, 1),
                              )
                            : GestureDetector(
                                onTap: () {
                                  setState(() {
                                    isSidebar = true;
                                  });
                                },
                                child: const ClipRRect(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(100)),
                                  child: Image(
                                    height: 35,
                                    image: AssetImage(
                                        "assets/icons/profilepic.png"),
                                  ),
                                ),
                              ),
                        const ClipRRect(
                          borderRadius: BorderRadius.all(Radius.circular(100)),
                          child: Image(
                            height: 31,
                            image: AssetImage("assets/icons/logoS.png"),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              debugPrint("hello");
                              newUser = !newUser;
                            });
                          },
                          child: const Image(
                            height: 21,
                            image: AssetImage("assets/icons/notification.png"),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 29,
                    ),
                    const Text(
                      "Be in-charge of your health, Uma!",
                      style: TextStyle(
                        fontFamily: "AlegreyaSans",
                        fontSize: 25,
                        color: Color.fromRGBO(55, 27, 52, 1),
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Text(
                      "How are you feeling today ?",
                      style: TextStyle(
                        fontFamily: "AlegreyaSans",
                        fontSize: 12,
                        color: Color.fromRGBO(55, 27, 52, 1),
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          emotionCard(
                              bgColor: const Color.fromRGBO(254, 206, 206, 1),
                              textEmotion: "Happy",
                              stickerLocation: "assets/stickers/Happy.png"),
                          const SizedBox(
                            width: 26,
                          ),
                          emotionCard(
                              bgColor: const Color.fromRGBO(222, 254, 191, 1),
                              textEmotion: "Angry",
                              stickerLocation: "assets/stickers/angry.png"),
                          const SizedBox(
                            width: 26,
                          ),
                          emotionCard(
                              bgColor: const Color.fromRGBO(254, 206, 206, 1),
                              textEmotion: "Happy",
                              stickerLocation: "assets/stickers/Happy.png"),
                          const SizedBox(
                            width: 26,
                          ),
                          emotionCard(
                              bgColor: const Color.fromRGBO(222, 254, 191, 1),
                              textEmotion: "Angry",
                              stickerLocation: "assets/stickers/angry.png"),
                          const SizedBox(
                            width: 26,
                          ),
                          emotionCard(
                              bgColor: const Color.fromRGBO(254, 206, 206, 1),
                              textEmotion: "Happy",
                              stickerLocation: "assets/stickers/Happy.png"),
                          const SizedBox(
                            width: 26,
                          ),
                          emotionCard(
                              bgColor: const Color.fromRGBO(222, 254, 191, 1),
                              textEmotion: "Angry",
                              stickerLocation: "assets/stickers/angry.png"),
                          const SizedBox(
                            width: 26,
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),

                    // -----First Card--------
                    CustomCard(
                      title: "Know My Prakruti",
                      subTitle:
                          "Prakriti & Propensity for your health challenge, helps to go right direction!",
                      bgColor: Colors.white,
                      stickerAdd: "assets/stickers/dealing.png",
                      bgBtnColor: const Color.fromRGBO(8, 78, 140, 1),
                      btnText: "Take a Quiz",
                      isIcon: false,
                      onPress: () {
                        Get.to(() => const QuizScreen());
                      },
                    ),
                    const SizedBox(
                      height: 20,
                    ),

                    const SizedBox(
                      height: 20,
                    ),

                    const SizedBox(
                      height: 20,
                    ),

                    // ---------Second Card---------
                    CustomCard(
                      title: "Holistic Vyayaama",
                      subTitle: "See what’s on your schedule today!",
                      bgColor: const Color.fromRGBO(252, 215, 76, 1),
                      stickerAdd: "assets/stickers/holistic.png",
                      bgBtnColor: Colors.white,
                      btnText: "Check it out!",
                      isIcon: false,
                      onPress: () {
                        Get.to(() => const HolisticVyayaama());
                      },
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    // ---------Third Card---------
                    CustomCard(
                      title: "Aahaara",
                      subTitle: "Meal of the Day! Wholesome and Tasty!",
                      bgColor: const Color.fromRGBO(248, 255, 207, 1),
                      stickerAdd: "assets/stickers/aahaara.png",
                      bgBtnColor: const Color.fromRGBO(252, 215, 76, 1),
                      btnText: "Check it out!",
                      isIcon: false,
                      onPress: () {
                        Get.to(() => const AvocadoToast());
                      },
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    // ---------Fourth Card---------
                    SizedBox(
                      width: 327,
                      height: 130,
                      child: Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        elevation: 0.5,
                        color: const Color.fromRGBO(162, 244, 255, 1),
                        child: Padding(
                          padding: const EdgeInsets.all(25),
                          child: Row(
                            children: [
                              const Expanded(
                                child: Padding(
                                  padding: EdgeInsets.only(right: 20.0),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Know my health benefits",
                                        style: TextStyle(
                                          fontFamily: "AlegreyaSans",
                                          fontSize: 10,
                                          color: Color.fromRGBO(37, 51, 52, 1),
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                      Text(
                                        "Am i eligible for Govt. benefits, Or i have insurance by Govt, If i have neither, where do I start?",
                                        style: TextStyle(
                                          fontFamily: "AlegreyaSans",
                                          fontSize: 12,
                                          color: Color.fromRGBO(0, 0, 0, 1),
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              InkWell(
                                onTap: () => Get.to(() => const GovtBenfit()),
                                child: const CircleAvatar(
                                  radius: 15,
                                  backgroundColor: Colors.white,
                                  child: Icon(
                                    Icons.arrow_forward_outlined,
                                    size: 20,
                                    color: Colors.black,
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                  ],
                ),
        ),
      ),
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
