import 'package:flutter/material.dart';

class MessageCard extends StatefulWidget {
  const MessageCard({super.key, required this.message});

  final Map message;
  @override
  State<MessageCard> createState() => _MessageCardState();
}

class _MessageCardState extends State<MessageCard> {
  @override
  Widget build(BuildContext context) {
    return widget.message["name"] != "bot" ? _myMsg() : _botMsg();
  }

  Widget _myMsg() {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          const Text(
            "You",
            style: TextStyle(
              fontFamily: "Alegreya Sans",
              fontWeight: FontWeight.w400,
              fontSize: 14,
              color: Color.fromRGBO(8, 78, 140, 1),
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          Container(
            padding: const EdgeInsets.symmetric(vertical: 19, horizontal: 30),
            width: 252,
            decoration: const BoxDecoration(
                color: Color.fromRGBO(51, 105, 255, 1),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(25),
                  topRight: Radius.circular(0),
                  bottomLeft: Radius.circular(25),
                  bottomRight: Radius.circular(25),
                )),
            child: Text(
              widget.message["msg"] ?? "",
              style: const TextStyle(
                fontFamily: "Nunito",
                fontWeight: FontWeight.w700,
                fontSize: 12,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _botMsg() {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16.0),
      child: Row(
        children: [
          const Image(
              height: 44,
              width: 44,
              image: AssetImage("assets/stickers/pranayam.png")),
          Container(
            padding: const EdgeInsets.symmetric(vertical: 19, horizontal: 24.5),
            width: 252,
            child: Text(
              widget.message["msg"] ?? "",
              style: const TextStyle(
                fontFamily: "Nunito",
                fontWeight: FontWeight.w700,
                fontSize: 13,
                color: Color.fromRGBO(101, 101, 101, 1),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
