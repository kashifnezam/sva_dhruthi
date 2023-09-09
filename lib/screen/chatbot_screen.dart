import 'package:flutter/material.dart';

class ChatBot extends StatefulWidget {
  const ChatBot({super.key});

  @override
  State<ChatBot> createState() => _ChatBotState();
}

class _ChatBotState extends State<ChatBot> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: ListView(
              padding: const EdgeInsets.only(top: 44, left: 29, right: 24),
              children: const [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.all(Radius.circular(100)),
                      child: Image(
                        height: 35,
                        image: AssetImage("assets/icons/profilepic.png"),
                      ),
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.all(Radius.circular(100)),
                      child: Image(
                        height: 31,
                        image: AssetImage("assets/icons/logoS.png"),
                      ),
                    ),
                    Image(
                      height: 21,
                      image: AssetImage("assets/icons/notification.png"),
                    ),
                  ],
                ),
                SizedBox(
                  height: 59,
                ),
                Text(
                  "Hi there! I am Sampann...",
                  style: TextStyle(
                    fontSize: 30,
                    color: Color.fromRGBO(8, 78, 140, 1),
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Text(
                  "Your health assistant, Ask me anything related...\nI will try to answer to my ability! ",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 14,
                    color: Color.fromRGBO(8, 78, 140, 1),
                    fontWeight: FontWeight.w400,
                  ),
                ),

                // -------- Suggestion to ask Questions ------------
                SizedBox(
                  height: 27,
                ),
                Center(
                  child: Image(
                    height: 28,
                    image: AssetImage("assets/icons/barM.png"),
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  "Ask",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 14,
                    color: Color.fromRGBO(63, 63, 63, 1),
                    fontWeight: FontWeight.w700,
                    fontFamily: "Nunito",
                  ),
                ),

                SizedBox(
                  height: 29,
                ),
                Text(
                  "How to cope with high blood sugar",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 14,
                    color: Color.fromRGBO(63, 63, 63, 1),
                    fontWeight: FontWeight.w500,
                    fontFamily: "Nunito",
                  ),
                ),

                SizedBox(
                  height: 29,
                ),
                Text(
                  "Ask more question",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 14,
                    color: Color.fromRGBO(63, 63, 63, 1),
                    fontWeight: FontWeight.w500,
                    fontFamily: "Nunito",
                  ),
                ),

                SizedBox(
                  height: 29,
                ),
                Text(
                  "Ask more question",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 14,
                    color: Color.fromRGBO(63, 63, 63, 1),
                    fontWeight: FontWeight.w500,
                    fontFamily: "Nunito",
                  ),
                ),
                SizedBox(
                  height: 29,
                ),
                Text(
                  "Ask more question",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 14,
                    color: Color.fromRGBO(63, 63, 63, 1),
                    fontWeight: FontWeight.w500,
                    fontFamily: "Nunito",
                  ),
                ),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 36,
            ),
            child: Text(
              "Sampann may produce inaccurate information about people, places, or facts at sometimes.",
              style: TextStyle(
                fontSize: 10,
                color: Color.fromRGBO(155, 165, 183, 1),
                fontWeight: FontWeight.w400,
                fontStyle: FontStyle.italic,
                fontFamily: "Inter",
              ),
            ),
          ),
          Card()
        ],
      ),
    );
  }
}
