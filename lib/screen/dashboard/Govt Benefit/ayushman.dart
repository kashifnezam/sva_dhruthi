import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sampann_app/screen/dashboard/Govt%20Benefit/holistic_vyayaama.dart';
import 'package:sampann_app/services/tools.dart';

class AyushmanBharat extends StatefulWidget {
  const AyushmanBharat({super.key});

  @override
  State<AyushmanBharat> createState() => _AyushmanBharatState();
}

class _AyushmanBharatState extends State<AyushmanBharat> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(color: Colors.white),
      child: SafeArea(
        child: Scaffold(
          backgroundColor: const Color.fromRGBO(213, 250, 255, 1),
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
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 14.0),
                        child: backNavigation(),
                      ),
                      const Center(
                          child: Image(
                              image: AssetImage("assets/images/ayushman.png")))
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),

              // ----------------The Questions Ask to user----------
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 27),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Ayushman Bharat",
                      style: TextStyle(
                        fontFamily: "AlegreyaSans",
                        fontWeight: FontWeight.w700,
                        fontSize: 20,
                        color: Color.fromRGBO(8, 78, 140, 1),
                      ),
                    ),
                    SizedBox(
                      height: 14,
                    ),
                    Text(
                      "Ayushman Bharat Pradhan Mantri Jan Arogya Yojana is a national public health insurance scheme of the Government of the India that aims to provide free access to health insurance coverage for low income earners in the country.",
                      style: TextStyle(
                        fontFamily: "AlegreyaSans",
                        fontWeight: FontWeight.w500,
                        fontSize: 18,
                        color: Color.fromRGBO(8, 78, 140, 1),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Container(
                height: Get.height * 0.06,
                margin: EdgeInsets.only(left: Get.width * 0.50, right: 25),
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(60))),
                child: Directionality(
                  textDirection: TextDirection.rtl,
                  child: ElevatedButton.icon(
                    style: ButtonStyle(
                      backgroundColor: const MaterialStatePropertyAll(
                        Color.fromRGBO(8, 78, 140, 1),
                      ),
                      shape: MaterialStateProperty.all(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                      ),
                    ),
                    onPressed: () {
                      Get.to(() => const HolisticVyayaama());
                    },
                    label: const Text(
                      "Next Scheme",
                      maxLines: 1,
                      style: TextStyle(
                        fontFamily: "AlegreyaSans",
                        fontWeight: FontWeight.w500,
                        fontSize: 15,
                        color: Color.fromRGBO(255, 255, 255, 1),
                      ),
                    ),
                    icon: const Icon(
                      Icons.arrow_circle_right_outlined,
                      color: Color.fromRGBO(255, 255, 255, 1),
                      size: 16,
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
