import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sampann_app/services/auth.dart';
import 'package:sampann_app/screen/landing_screen.dart';

class Sidebar extends StatefulWidget {
  const Sidebar({super.key});

  @override
  State<Sidebar> createState() => _SidebarState();
}

class _SidebarState extends State<Sidebar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(colors: [
            Color.fromRGBO(55, 138, 214, 1),
            Color.fromRGBO(8, 78, 140, 1),
          ]),
        ),
        child: Container(
          margin: const EdgeInsets.only(top: 87, left: 25, right: 25),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Image(
                fit: BoxFit.cover,
                height: 51,
                width: 51,
                image: AssetImage("assets/icons/profilepic.png"),
              ),
              const SizedBox(
                height: 5,
              ),
              Text(
                "Uma",
                style: GoogleFonts.lato(
                  textStyle: const TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 22,
                    color: Color.fromRGBO(255, 255, 255, 1),
                  ),
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 2),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    border: Border.all(color: Colors.white, width: 1)),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const Icon(
                      Icons.edit,
                      size: 14.5,
                      color: Colors.white,
                    ),
                    const SizedBox(
                      width: 5.6,
                    ),
                    Text(
                      "Edit Profile",
                      style: GoogleFonts.lato(
                        textStyle: const TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 14,
                          color: Color.fromRGBO(255, 255, 255, 1),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              Container(
                height: 1,
                decoration: const BoxDecoration(
                  gradient: LinearGradient(colors: [
                    Color.fromRGBO(69, 67, 160, 1),
                    Color.fromRGBO(69, 67, 160, 1)
                  ]),
                ),
                child: const Divider(),
              ),
              const SizedBox(
                height: 25,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Take Prakruti Quiz",
                    style: GoogleFonts.inter(
                        textStyle: const TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 16,
                      color: Color.fromRGBO(255, 255, 255, 1),
                    )),
                  ),
                  Container(
                    padding:
                        const EdgeInsets.symmetric(vertical: 2, horizontal: 9),
                    decoration: BoxDecoration(
                      color: const Color.fromRGBO(183, 207, 238, 1),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Text(
                      "Vata",
                      style: GoogleFonts.inter(
                        textStyle: const TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                          color: Color.fromRGBO(46, 65, 157, 1),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 25,
              ),
              Text(
                "Know Govt Benefits",
                style: GoogleFonts.inter(
                    textStyle: const TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 16,
                  color: Color.fromRGBO(255, 255, 255, 1),
                )),
              ),
              const SizedBox(
                height: 25,
              ),
              Text(
                "What am am i dealing with",
                style: GoogleFonts.inter(
                    textStyle: const TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 16,
                  color: Color.fromRGBO(255, 255, 255, 1),
                )),
              ),
              const SizedBox(
                height: 25,
              ),
              Text(
                "My Favorites",
                style: GoogleFonts.inter(
                    textStyle: const TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 16,
                  color: Color.fromRGBO(255, 255, 255, 1),
                )),
              ),
              const SizedBox(
                height: 25,
              ),
              Container(
                height: 1,
                decoration: const BoxDecoration(
                  gradient: LinearGradient(colors: [
                    Color.fromRGBO(69, 67, 160, 1),
                    Color.fromRGBO(69, 67, 160, 1)
                  ]),
                ),
                child: const Divider(),
              ),
              const SizedBox(
                height: 25,
              ),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    height: 19,
                    width: 19,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(color: Colors.white, width: 2)),
                    child: Text(
                      textAlign: TextAlign.center,
                      "?",
                      style: GoogleFonts.inter(
                        textStyle: const TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 12,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 12.8,
                  ),
                  Text(
                    "Help",
                    style: GoogleFonts.inter(
                        textStyle: const TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 16,
                      color: Color.fromRGBO(255, 255, 255, 1),
                    )),
                  ),
                ],
              ),
              const SizedBox(
                height: 25,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Icon(
                    Icons.settings_outlined,
                    color: Colors.white,
                    size: 17,
                  ),
                  const SizedBox(
                    width: 12.8,
                  ),
                  Text(
                    "Settings",
                    style: GoogleFonts.inter(
                        textStyle: const TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 16,
                      color: Color.fromRGBO(255, 255, 255, 1),
                    )),
                  ),
                ],
              ),
              const SizedBox(
                height: 25,
              ),
              Container(
                height: 1,
                decoration: const BoxDecoration(
                  gradient: LinearGradient(colors: [
                    Color.fromRGBO(69, 67, 160, 1),
                    Color.fromRGBO(69, 67, 160, 1)
                  ]),
                ),
                child: const Divider(),
              ),
              const SizedBox(
                height: 25,
              ),
              GestureDetector(
                onTap: () async {
                  // removeToken();
                  signOutGoogle();
                  Get.off(() => const LandingScreen());
                },
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const Image(
                      image: AssetImage("assets/icons/logout.png"),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Text(
                      "Log Out ",
                      style: GoogleFonts.inter(
                          textStyle: const TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 16,
                        color: Color.fromRGBO(255, 255, 255, 1),
                      )),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
