import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sampann_app/screen/dashboard/Govt%20Benefit/ayushman.dart';
import 'package:sampann_app/screen/question_screen/Quiz/quiz.dart';
import 'package:sampann_app/services/tools.dart';

class GovtBenfit extends StatelessWidget {
  const GovtBenfit({super.key});

  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> myList = [
      {
        "title": "Ayushman Bharat",
        "bgColor": const Color.fromRGBO(162, 244, 255, 1),
        "btn": () {
          Get.to(() => const AyushmanBharat());
        },
      },
      {
        "title": "Awaz Health Insurance Yojana",
        "bgColor": const Color.fromRGBO(191, 247, 255, 1),
        "btn": () {
          Get.to(() => const QuizScreen());
        },
      },
      {
        "title": "Aam Aadmi Bima Yojana",
        "bgColor": const Color.fromRGBO(213, 250, 255, 1),
        "btn": () {
          Get.to(() => const QuizScreen());
        },
      },
      {
        "title": "Karunya Health scheme",
        "bgColor": const Color.fromRGBO(235, 253, 255, 1),
        "btn": () {
          Get.to(() => const QuizScreen());
        },
      },
    ];
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 14.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              backNavigation(),
              const SizedBox(
                height: 15,
              ),
              const Text(
                "Unlocking the benefits of Health Awareness!",
                style: TextStyle(
                  fontFamily: "AlegreyaSans",
                  fontSize: 20,
                  color: Color.fromRGBO(55, 27, 52, 1),
                  fontWeight: FontWeight.w700,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                "Having health benefits is essential because they provide the safety we need to protect ourselves and our loved ones from unexpected medication. ",
                style: TextStyle(
                  fontFamily: "Inter",
                  fontSize: 14,
                  color: Color.fromRGBO(0, 0, 0, 1),
                  fontWeight: FontWeight.w400,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                "Govt. Schemes that are available for you",
                style: TextStyle(
                  fontFamily: "AlegreyaSans",
                  fontSize: 12,
                  color: Color.fromRGBO(0, 0, 0, 1),
                  fontWeight: FontWeight.w400,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: myList.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(bottom: 15),
                      child: Card(
                        color: myList[index]["bgColor"],
                        shape: ContinuousRectangleBorder(
                            borderRadius: BorderRadius.circular(15)),
                        child: Padding(
                          padding: const EdgeInsets.all(17.0),
                          child: InkWell(
                            onTap: () {
                              myList[index]["btn"]();
                            },
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  myList[index]["title"],
                                  style: const TextStyle(
                                    fontFamily: "Inter",
                                    fontSize: 14,
                                    color: Color.fromRGBO(8, 78, 140, 1),
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                const CircleAvatar(
                                  radius: 15,
                                  backgroundColor: Colors.white,
                                  child: Icon(
                                    Icons.arrow_forward_outlined,
                                    size: 20,
                                    color: Colors.black,
                                  ),
                                )
                              ],
                            ),
                          ),
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
