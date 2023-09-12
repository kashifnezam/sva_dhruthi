import 'package:flutter/material.dart';

class QuizResult extends StatefulWidget {
  const QuizResult({super.key});

  @override
  State<QuizResult> createState() => _QuizResultState();
}

class _QuizResultState extends State<QuizResult> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        alignment: Alignment.center,
        margin: const EdgeInsets.only(
          top: 33,
        ),
        child: ListView(
          children: [
            const Image(
              height: 70,
              width: 70,
              image: AssetImage("assets/icons/logoS.png"),
            ),
            const SizedBox(
              height: 15,
            ),
            const Text(
              "Prakruti Result",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: "Alegreya",
                fontWeight: FontWeight.w700,
                fontSize: 40,
                color: Color.fromRGBO(8, 78, 140, 1),
              ),
            ),
            const SizedBox(
              height: 35,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    Text(
                      "VATA",
                      style: TextStyle(
                        fontFamily: "AlegreyaSans",
                        fontWeight: FontWeight.w400,
                        fontSize: 12,
                        color: Color.fromRGBO(84, 95, 113, 1),
                      ),
                    ),
                    Text(
                      "65%",
                      style: TextStyle(
                        fontFamily: "AlegreyaSans",
                        fontWeight: FontWeight.w400,
                        fontSize: 24,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(
                      height: 6,
                    ),
                    Image(
                      width: 89,
                      height: 112,
                      image: AssetImage("assets/icons/q3Result.png"),
                    ),
                  ],
                ),
                SizedBox(
                  width: 13,
                ),
                Column(
                  children: [
                    Text(
                      "PITTA",
                      style: TextStyle(
                        fontFamily: "AlegreyaSans",
                        fontWeight: FontWeight.w400,
                        fontSize: 12,
                        color: Color.fromRGBO(84, 95, 113, 1),
                      ),
                    ),
                    Text(
                      "15%",
                      style: TextStyle(
                        fontFamily: "AlegreyaSans",
                        fontWeight: FontWeight.w400,
                        fontSize: 24,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(
                      height: 6,
                    ),
                    Image(
                      width: 89,
                      height: 112,
                      image: AssetImage("assets/icons/q2Result.png"),
                    ),
                  ],
                ),
                SizedBox(
                  width: 13,
                ),
                Column(
                  children: [
                    Text(
                      "KAFFA",
                      style: TextStyle(
                        fontFamily: "AlegreyaSans",
                        fontWeight: FontWeight.w400,
                        fontSize: 12,
                        color: Color.fromRGBO(84, 95, 113, 1),
                      ),
                    ),
                    Text(
                      "20%",
                      style: TextStyle(
                        fontFamily: "AlegreyaSans",
                        fontWeight: FontWeight.w400,
                        fontSize: 24,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(
                      height: 6,
                    ),
                    Image(
                      width: 89,
                      height: 112,
                      image: AssetImage("assets/icons/q1Result.png"),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            const Center(
              child: Image(
                width: 86,
                height: 88,
                image: AssetImage("assets/icons/q4Result.png"),
              ),
            ),
            const SizedBox(
              height: 19,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 66),
              child: Text(
                "Your predominant Prakruti is Vata",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: "AlegreyaSans",
                  fontWeight: FontWeight.w700,
                  fontSize: 25,
                  color: Color.fromRGBO(8, 78, 140, 1),
                ),
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 57, right: 56),
              child: Text(
                "Embrace your Prakruti for a journey to vibrant health and wellness. We are here to support you.",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: "AlegreyaSans",
                  fontWeight: FontWeight.w400,
                  fontSize: 16,
                  color: Color.fromRGBO(37, 51, 52, 1),
                ),
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            Center(
              child: SizedBox(
                height: 61,
                width: 261,
                child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: const MaterialStatePropertyAll(
                          Color.fromRGBO(8, 78, 140, 1)),
                      shape: MaterialStateProperty.all(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(13.0),
                        ),
                      ),
                    ),
                    onPressed: null,
                    child: const Text(
                      "Continue",
                      style: TextStyle(
                        fontFamily: "AlegreyaSans",
                        fontWeight: FontWeight.w500,
                        fontSize: 25,
                        color: Colors.white,
                      ),
                    )),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              "<   Take Quiz Again",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: "AlegreyaSans",
                fontWeight: FontWeight.w400,
                fontSize: 14,
                color: Colors.black,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
