import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  final String title;
  final String subTitle;
  final Color bgColor;
  final Color bgBtnColor;
  final String btnText;
  final String stickerAdd;
  final bool isIcon;
  final VoidCallback onPress;

  const CustomCard({
    super.key,
    required this.title,
    required this.subTitle,
    required this.bgColor,
    required this.stickerAdd,
    required this.bgBtnColor,
    required this.btnText,
    required this.isIcon,
    required this.onPress,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 327,
      height: 170,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        elevation: 0.5,
        color: bgColor,
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Row(
            children: [
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: const TextStyle(
                        fontFamily: "AlegreyaSans",
                        fontSize: 10,
                        color: Color.fromRGBO(37, 51, 52, 1),
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    Text(
                      subTitle,
                      style: const TextStyle(
                        fontFamily: "AlegreyaSans",
                        fontSize: 12,
                        color: Color.fromRGBO(0, 0, 0, 1),
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    SizedBox(
                      width: btnText == "Find someone nearby" ? 180 : 138,
                      height: 39,
                      child: ElevatedButton(
                        style: ButtonStyle(
                          backgroundColor: MaterialStatePropertyAll(bgBtnColor),
                          shape: MaterialStateProperty.all(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                          ),
                        ),
                        onPressed: () {
                          onPress();
                        },
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              btnText,
                              style: TextStyle(
                                  color: bgBtnColor == Colors.white
                                      ? const Color.fromRGBO(8, 78, 140, 1)
                                      : Colors.white,
                                  fontFamily: "AlegreyaSans",
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500),
                            ),
                            if (isIcon)
                              const SizedBox(
                                width: 8,
                              ),
                            if (isIcon)
                              const Icon(
                                Icons.play_circle,
                                size: 13,
                              )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              Image(
                height: 82,
                width: 82,
                image: AssetImage(stickerAdd),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
