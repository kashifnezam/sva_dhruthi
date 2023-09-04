import 'package:flutter/material.dart';

class Card1 extends StatelessWidget {
  const Card1(
      {super.key,
      required this.title,
      required this.subTitle,
      required this.bgColor,
      required this.stickerAdd});
  final String title;
  final String subTitle;
  final Color bgColor;
  final String stickerAdd;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        elevation: 6,
        color: bgColor,
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Row(
            children: [
              Flexible(
                flex: 2,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      textAlign: TextAlign.center,
                      title,
                      style: const TextStyle(fontSize: 18),
                    ),
                    Text(
                      subTitle,
                      style: const TextStyle(fontSize: 12),
                    ),
                    Container(
                      decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(60))),
                      height: 40,
                      width: 130,
                      child: ElevatedButton(
                          style: ButtonStyle(
                            backgroundColor: const MaterialStatePropertyAll(
                                Colors.lightBlue),
                            shape: MaterialStateProperty.all(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(13.0),
                              ),
                            ),
                          ),
                          onPressed: () {},
                          child: const Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Text(
                                "Watch Now",
                              ),
                              Icon(Icons.play_circle)
                            ],
                          )),
                    )
                  ],
                ),
              ),
              Image(
                height: 100,
                image: AssetImage(stickerAdd),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
