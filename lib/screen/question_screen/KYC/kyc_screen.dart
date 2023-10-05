import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sampann_app/screen/dashboard/home_with_sidebar.dart';
import 'package:sampann_app/items/question_items.dart';
import 'q_1_options.dart';
import 'q_2_options.dart';
import 'q_3_options.dart';
import 'q_4_options.dart';
import 'q_5_options.dart';
import 'q_6_options.dart';

class KYCScreen extends StatefulWidget {
  const KYCScreen({super.key});

  @override
  State<KYCScreen> createState() => _KYCScreenState();
}

// to check selected
bool isSelected = false;

// for text are in Q4.
TextEditingController healthMsg = TextEditingController();
// Radio button to change
List myOptions = ["a", "b", "c"];
String currValue = "";
// defining question options on a variable

int optionIndexKYC = 0;
int quesIndexKYC = 0;

class _KYCScreenState extends State<KYCScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(color: Colors.white),
      child: SafeArea(
        child: Scaffold(
          backgroundColor: const Color.fromRGBO(8, 78, 140, 1),
          body: ListView(
            children: [
              Stack(
                children: [
                  Container(
                    height: 225,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/icons/BGCircle1.png'),
                        fit: BoxFit.fill,
                        // This ensures the image covers the entire body
                      ),
                    ),
                  ),
                  const Column(
                    children: [
                      SizedBox(
                        height: 73,
                      ),
                      Text(
                        "Who are you?",
                        style: TextStyle(
                          fontFamily: "AlegreyaSans",
                          fontWeight: FontWeight.w700,
                          fontSize: 25,
                          color: Color.fromRGBO(49, 122, 191, 1),
                        ),
                      ),
                      SizedBox(
                        height: 7,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 105),
                        child: Text(
                            "Answer simple questions to know your body type as per ayurveda!",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontFamily: "AlegreyaSans",
                              fontWeight: FontWeight.w400,
                              fontSize: 12,
                              color: Color.fromRGBO(37, 51, 52, 1),
                            )),
                      ),
                      SizedBox(
                        height: 36,
                      ),
                      CircleAvatar(
                        radius: 47,
                        backgroundColor: Colors.white,
                        child: Image(
                          height: 70,
                          image: AssetImage(
                            "assets/icons/logoS.png",
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),

              // ----------------The Questions 1 ----------
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 27),
                child: Text(kycQuestions[quesIndexKYC],
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                        fontFamily: "AlegreyaSans",
                        fontWeight: FontWeight.w700,
                        fontSize: 25,
                        color: Colors.white)),
              ),

              // -----Q1 to Q6----
              if (quesIndexKYC == 0) KYC1Option(optionIndexKYC),
              if (quesIndexKYC == 1) KYC2Option(optionIndexKYC),
              if (quesIndexKYC == 2) KYC3Option(optionIndexKYC),
              if (quesIndexKYC == 3) KYC4Option(optionIndexKYC),
              if (quesIndexKYC == 4) KYC5Option(optionIndexKYC),
              if (quesIndexKYC == 5) KYC6Option(optionIndexKYC),

              //-----------Button tp next/submit------------
              customBtn(),
            ],
          ),
        ),
      ),
    );
  }

  Widget customBtn() {
    return Padding(
      padding: const EdgeInsets.only(bottom: 56),
      child: Column(
        children: [
          const SizedBox(
            height: 33,
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 57),
            decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(60))),
            height: 60,
            width: 261,
            child: isSelected
                ? ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: const MaterialStatePropertyAll(
                          Color.fromRGBO(222, 228, 237, 1)),
                      shape: MaterialStateProperty.all(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(13.0),
                        ),
                      ),
                    ),
                    onPressed: null,
                    child: const Text(
                      "Next",
                      style: TextStyle(
                        fontFamily: "AlegreyaSans",
                        fontWeight: FontWeight.w500,
                        fontSize: 25,
                        color: Color.fromRGBO(210, 210, 210, 1),
                      ),
                    ))
                : ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor:
                          const MaterialStatePropertyAll(Colors.white),
                      shape: MaterialStateProperty.all(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(13.0),
                        ),
                      ),
                    ),
                    onPressed: () {
                      setState(() {
                        myKYCResult[kycQuestions[quesIndexKYC]] = currValue;
                        if (quesIndexKYC == 3) {
                          myKYCResult[kycQuestions[quesIndexKYC]] = [
                            currValue,
                            healthMsg.text.toString()
                          ];
                        }
                        // print(myKYCResult);
                        // isSelected = false;
                        quesIndexKYC++;
                        if (quesIndexKYC == 1) {
                          optionIndexKYC = 5;
                        } else if (quesIndexKYC == 2) {
                          optionIndexKYC = 8;
                        } else if (quesIndexKYC == 3) {
                          currValue = "I have...";
                          optionIndexKYC = 14;
                        } else if (quesIndexKYC == 4) {
                          optionIndexKYC = 20;
                        } else if (quesIndexKYC == 5) {
                          optionIndexKYC = 22;
                        } else {
                          // sendQuizData(myKYCResult);

                          Get.to(() => const HomeWithSideBar());
                          optionIndexKYC = 0;
                          quesIndexKYC = 0;
                        }
                      });
                    },
                    child: (quesIndexKYC == 5)
                        ? const Text(
                            "Submit",
                            style: TextStyle(
                              fontFamily: "AlegreyaSans",
                              fontWeight: FontWeight.w500,
                              fontSize: 25,
                              color: Color.fromRGBO(8, 78, 140, 1),
                            ),
                          )
                        : const Text(
                            "Next",
                            style: TextStyle(
                              fontFamily: "AlegreyaSans",
                              fontWeight: FontWeight.w500,
                              fontSize: 25,
                              color: Color.fromRGBO(8, 78, 140, 1),
                            ),
                          )),
          ),
        ],
      ),
    );
  }
}
