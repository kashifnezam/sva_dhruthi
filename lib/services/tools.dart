import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

bottomSystemColor({required Color color}) {
  SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(systemNavigationBarColor: color));
}

Widget backNavigation() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      IconButton(
        icon: const Icon(Icons.arrow_back_sharp),
        onPressed: () => Get.back(),
      ),
      const ClipRRect(
        borderRadius: BorderRadius.all(Radius.circular(100)),
        child: Image(
          height: 31,
          image: AssetImage("assets/icons/logoS.png"),
        ),
      ),
      const Padding(
        padding: EdgeInsets.only(right: 12.0),
        child: Image(
          height: 21,
          image: AssetImage("assets/icons/notification.png"),
        ),
      ),
    ],
  );
}
