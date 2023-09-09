import 'package:flutter/material.dart';
import 'package:sampann_app/authorization/auth.dart';
import 'package:sampann_app/items/question_items.dart';

class QuizScreen extends StatefulWidget {
  const QuizScreen({super.key});

  @override
  State<QuizScreen> createState() => _QuizScreenState();
}

// Radio button to change
List myOptions = ["a", "b", "c"];
String currValue = "";
// defining question options on a variable

int optionIndexQuiz = 0;
int quesIndexQuiz = 0;

class _QuizScreenState extends State<QuizScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(color: Colors.white),
      child: SafeArea(
        child: Scaffold(
          backgroundColor: const Color.fromRGBO(205, 232, 201, 1),
          body: ListView(
            children: [
              Stack(
                children: [
                  Container(
                    height: 255,
                    // width: double.infinity,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(
                            'assets/icons/BGCircle1.png'), // Replace with your image path
                        fit: BoxFit.fill,
                        // This ensures the image covers the entire body
                      ),
                    ),
                  ),
                  const Column(
                    children: [
                      SizedBox(
                        height: 71,
                      ),
                      Text(
                        "Quiz",
                        style: TextStyle(
                          fontFamily: "Alegreya",
                          fontWeight: FontWeight.w700,
                          fontSize: 40,
                          color: Color.fromRGBO(8, 78, 140, 1),
                        ),
                      ),
                      SizedBox(
                        height: 7,
                      ),
                      Text("Know My Prakruti",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontFamily: "AlegreyaSans",
                            fontWeight: FontWeight.w500,
                            fontSize: 25,
                            color: Color.fromRGBO(49, 122, 191, 1),
                          )),
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
                        height: 13,
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

              // ----------------The Questions Ask to user----------
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 27),
                child: Text(quizQuestion[quesIndexQuiz],
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      fontFamily: "AlegreyaSans",
                      fontWeight: FontWeight.w700,
                      fontSize: 25,
                      color: Color.fromRGBO(7, 51, 52, 1),
                    )),
              ),

              //-----------Option 1 to choose------------
              const SizedBox(
                height: 20,
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    currValue = myOptions[0];
                  });
                },
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 17),
                  margin: const EdgeInsets.symmetric(horizontal: 27),
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(15),
                      ),
                      color: Color.fromRGBO(162, 244, 255, 1)),
                  height: 73,
                  child: Row(
                    children: [
                      Radio(
                        value: myOptions[0],
                        groupValue: currValue,
                        activeColor: Colors.black,
                        onChanged: ((value) {
                          setState(() {
                            currValue = value.toString();
                          });
                        }),
                      ),
                      Expanded(
                        child: Text(
                          quizOptions[optionIndexQuiz],
                          style: const TextStyle(
                            fontFamily: "AlegreyaSans",
                            fontWeight: FontWeight.w500,
                            fontSize: 20,
                            color: Color.fromRGBO(7, 51, 52, 1),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              //-----------Option 2 to choose------------
              const SizedBox(
                height: 20,
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    currValue = myOptions[1];
                  });
                },
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 17),
                  margin: const EdgeInsets.symmetric(horizontal: 27),
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(15),
                      ),
                      color: Color.fromRGBO(191, 247, 255, 1)),
                  height: 73,
                  child: Row(
                    children: [
                      Radio(
                        value: myOptions[1],
                        groupValue: currValue,
                        activeColor: Colors.black,
                        onChanged: ((value) {
                          setState(() {
                            currValue = value.toString();
                          });
                        }),
                      ),
                      Expanded(
                        child: Text(quizOptions[optionIndexQuiz + 1],
                            style: const TextStyle(
                              fontFamily: "AlegreyaSans",
                              fontWeight: FontWeight.w500,
                              fontSize: 20,
                              color: Color.fromRGBO(7, 51, 52, 1),
                            )),
                      ),
                    ],
                  ),
                ),
              ),

              //-----------Option 3 to choose------------
              const SizedBox(
                height: 20,
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    currValue = myOptions[2];
                  });
                },
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 17),
                  margin: const EdgeInsets.symmetric(horizontal: 27),
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(15),
                      ),
                      color: Color.fromRGBO(213, 250, 255, 1)),
                  height: 73,
                  child: Row(
                    children: [
                      Radio(
                        value: myOptions[2],
                        groupValue: currValue,
                        activeColor: Colors.black,
                        onChanged: ((value) {
                          setState(() {
                            currValue = value.toString();
                          });
                        }),
                      ),
                      Expanded(
                        child: Text(quizOptions[optionIndexQuiz + 2],
                            style: const TextStyle(
                              fontFamily: "AlegreyaSans",
                              fontWeight: FontWeight.w500,
                              fontSize: 20,
                              color: Color.fromRGBO(7, 51, 52, 1),
                            )),
                      ),
                    ],
                  ),
                ),
              ),

              //-----------Button tp next/submit------------
              const SizedBox(
                height: 33,
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 57),
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(60))),
                height: 60,
                width: 261,
                child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: const MaterialStatePropertyAll(
                      Color.fromRGBO(8, 78, 140, 1),
                    ),
                    shape: MaterialStateProperty.all(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(13.0),
                      ),
                    ),
                  ),
                  onPressed: () {
                    setState(() {
                      myQuizResult[(quesIndexQuiz + 1).toString()] = currValue;
                      if (optionIndexQuiz >= quizOptions.length - 3) {
                        // optionIndexQuiz = 0;
                      } else {
                        optionIndexQuiz += 3;
                      }

                      if (quesIndexQuiz >= quizQuestion.length - 1) {
                        sendQuizData(myQuizResult);
                      } else {
                        quesIndexQuiz++;
                        currValue = "";
                      }
                    });
                    debugPrint("Curent value : $currValue");
                  },
                  child: quesIndexQuiz == quizQuestion.length - 1
                      ? const Text(
                          "Submit",
                          style: TextStyle(
                            fontFamily: "AlegreyaSans",
                            fontWeight: FontWeight.w500,
                            fontSize: 25,
                            color: Color.fromRGBO(255, 255, 255, 1),
                          ),
                        )
                      : const Text(
                          "Next",
                          style: TextStyle(
                            fontFamily: "AlegreyaSans",
                            fontWeight: FontWeight.w500,
                            fontSize: 25,
                            color: Color.fromRGBO(255, 255, 255, 1),
                          ),
                        ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
