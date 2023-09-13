import 'package:flutter/material.dart';

class IconsFile extends StatelessWidget {
  const IconsFile({super.key, required this.caption, required this.iconAdd});
  final String caption;
  final String iconAdd;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InkWell(
          onTap: () {},
          child: Card(
            elevation: 0.3,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image(
                height: 35,
                width: 35,
                image: AssetImage(iconAdd),
              ),
            ),
          ),
        ),
        const SizedBox(
          height: 5,
        ),
        Text(
          textAlign: TextAlign.center,
          caption,
          style: const TextStyle(
            fontFamily: "AlegreyaSans",
            fontSize: 12,
            color: Color.fromRGBO(8, 78, 140, 1),
            fontWeight: FontWeight.w400,
          ),
        ),
      ],
    );
  }
}
