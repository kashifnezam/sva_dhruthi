import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sampann_app/authorization/auth.dart';
import 'login_screen_email.dart';

class LandingScreen extends StatelessWidget {
  const LandingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin:
            const EdgeInsets.only(top: 147, left: 67, right: 62, bottom: 78),
        child: Column(
          children: [
            const Text(
              "WELCOME",
              style: TextStyle(
                fontSize: 40,
                color: Color.fromRGBO(8, 78, 140, 1),
                fontWeight: FontWeight.w700,
              ),
            ),
            const Text(
              "Stay focused. Live a healthy life.",
              style: TextStyle(
                fontFamily: "AlegreyaSans",
                fontSize: 20,
                fontWeight: FontWeight.w500,
                color: Color.fromRGBO(8, 78, 140, 1),
              ),
            ),
            const SizedBox(
              height: 22,
            ),
            Container(
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(60))),
              height: 60,
              width: 261,
              child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: const MaterialStatePropertyAll(
                    Color.fromRGBO(37, 193, 208, 1),
                  ),
                  shape: MaterialStateProperty.all(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(13.0),
                    ),
                  ),
                ),
                onPressed: () {
                  Get.to(() => const LoginScreenEmail());
                },
                child: const Text(
                  "Login with Email",
                  style: TextStyle(
                    fontFamily: "AlegreyaSans",
                    fontWeight: FontWeight.w500,
                    fontSize: 25,
                    color: Color.fromRGBO(255, 255, 255, 1),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 22,
            ),
            Container(
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(60))),
              height: 60,
              width: 261,
              child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: const MaterialStatePropertyAll(
                      Color.fromRGBO(255, 255, 255, 1),
                    ),
                    shape: MaterialStateProperty.all(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(13.0),
                      ),
                    ),
                  ),
                  onPressed: () async {
                    final user = await signInWithGoogle();
                    // print(user.additionalUserInfo);
                    debugPrint(user.credential.toString());
                    debugPrint(user.user?.phoneNumber.toString());
                    sendData(
                        user.user!.displayName.toString(),
                        user.user!.email.toString(),
                        123,
                        user.user!.emailVerified);
                  },
                  child: const Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Image(
                        fit: BoxFit.fill,
                        height: 26,
                        width: 26,
                        image: AssetImage("assets/icons/google.png"),
                      ),
                      Text(
                        "Sign in with Google",
                        style: TextStyle(
                            fontFamily: "AlegreyaSans",
                            fontWeight: FontWeight.w500,
                            fontSize: 25,
                            color: Colors.black),
                      ),
                    ],
                  )),
            ),
            const SizedBox(
              height: 146,
            ),
            const Text(
              "Don't have an account?",
              style: TextStyle(
                fontFamily: "AlegreyaSans",
                fontSize: 20,
                fontWeight: FontWeight.w700,
                color: Color.fromRGBO(8, 78, 140, 1),
              ),
            ),
            const SizedBox(
              height: 6,
            ),
            Container(
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(60))),
              height: 60,
              width: 261,
              child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: const MaterialStatePropertyAll(
                    Color.fromRGBO(8, 78, 140, 1),
                  ),
                  shape: MaterialStateProperty.all(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(13.0),
                    ),
                  ),
                ),
                onPressed: () async {
                  await signOutGoogle();
                },
                child: const Text(
                  "Sign up",
                  style: TextStyle(
                    fontFamily: "AlegreyaSans",
                    fontWeight: FontWeight.w500,
                    fontSize: 25,
                    color: Color.fromRGBO(255, 255, 255, 1),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            const Image(image: AssetImage("assets/icons/sampann.png")),
          ],
        ),
      ),
    );
  }
}
