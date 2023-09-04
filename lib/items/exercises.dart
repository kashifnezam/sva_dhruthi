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
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image(
                height: 50,
                image: AssetImage(iconAdd),
              ),
            ),
          ),
        ),
        Text(
          textAlign: TextAlign.center,
          caption,
          style: TextStyle(fontSize: 12, color: Colors.blue[800]),
        ),
      ],
    );
  }
}
