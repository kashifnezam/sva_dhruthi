import 'package:flutter/material.dart';
import 'package:sampann_app/authorization/auth.dart';
import 'package:sampann_app/screen/chatbot/chatbot_work.dart';
import 'package:sampann_app/screen/chatbot/message_card.dart';

class ChatBot extends StatefulWidget {
  const ChatBot({super.key});

  @override
  State<ChatBot> createState() => _ChatBotState();
}

bool turn = false;

class _ChatBotState extends State<ChatBot> {
  TextEditingController _controller = TextEditingController();

  bool isButton = false;
  final ScrollController _scrollController = ScrollController();
  @override
  void initState() {
    super.initState();
    _controller = TextEditingController();
    _controller.addListener(() {
      setState(() {
        isButton = _controller.text.trim().isNotEmpty;
      });
    });
  }

  bool isLoading = false;
  botResponse() async {
    setState(() {
      isLoading = true;
    });
    await getBotResponse(msg: _controller.text.toString().trim());
    setState(() {
      isLoading = false;
      msgControll();
    });
  }

  msgControll() {
    setState(() {
      _scrollController.animateTo(_scrollController.position.maxScrollExtent,
          duration: const Duration(seconds: 5), curve: Curves.easeOut);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 44, left: 29, right: 24),
        child: Column(
          children: [
            const Row(
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

            //  -------Message--------
            if (message.isNotEmpty)
              Expanded(
                child: ListView.builder(
                  controller: _scrollController,
                  itemCount: message.length,
                  itemBuilder: (context, index) {
                    return MessageCard(message: message[index]);
                  },
                ),
              ),

            //  ------Info incase no msg -------------
            if (message.isEmpty)
              Expanded(
                child: ListView(
                  children: const [
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
                horizontal: 7,
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
            const SizedBox(
              height: 9,
            ),
            Container(
              height: 56,
              width: 333,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(30)),
              ),
              child: Card(
                elevation: 0.1,
                shape: const OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.transparent),
                  borderRadius: BorderRadius.all(
                    Radius.circular(30),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    SizedBox(
                      height: 56,
                      width: 240,
                      child: TextField(
                        controller: _controller,
                        style: const TextStyle(
                          fontFamily: "AlegreyaSans",
                          fontWeight: FontWeight.w500,
                          fontSize: 20,
                          color: Colors.black,
                        ),
                        maxLines: 5,
                        maxLength: 500,
                        decoration: const InputDecoration(
                          counterText: "",
                          contentPadding: EdgeInsets.all(10),
                          border: InputBorder.none,
                          hintText: "Write your message",
                          hintStyle: TextStyle(
                            fontFamily: "Nunito",
                            fontWeight: FontWeight.w700,
                            fontSize: 13,
                            color: Color.fromRGBO(161, 161, 161, 1),
                          ),
                        ),
                      ),
                    ),
                    Row(
                      children: [
                        const Image(
                          image: AssetImage("assets/icons/microphone.png"),
                        ),
                        const SizedBox(
                          width: 7,
                        ),
                        isButton
                            ? isLoading
                                ? const SizedBox(
                                    height: 24,
                                    width: 24,
                                    child: CircularProgressIndicator(
                                      strokeWidth: 2,
                                    ),
                                  )
                                : GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        addUserMessage(
                                          msg: _controller.text
                                              .toString()
                                              .trim(),
                                        );
                                        FocusScope.of(context).unfocus();
                                        botResponse();
                                        _controller.text = "";
                                      });
                                    },
                                    child: const Image(
                                      height: 24,
                                      width: 24,
                                      image: AssetImage(
                                          "assets/icons/sendBlue.png"),
                                    ),
                                  )
                            : isLoading
                                ? const SizedBox(
                                    height: 24,
                                    width: 24,
                                    child: CircularProgressIndicator(
                                      strokeWidth: 2,
                                    ),
                                  )
                                : const Image(
                                    height: 24,
                                    width: 24,
                                    image:
                                        AssetImage("assets/icons/sendGrey.png"),
                                  ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 18,
            )
          ],
        ),
      ),
    );
  }
}
