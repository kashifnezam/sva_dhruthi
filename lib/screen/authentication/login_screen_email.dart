import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sampann_app/screen/authentication/login_screen_pass.dart';

class LoginScreenEmail extends StatelessWidget {
  const LoginScreenEmail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        margin: const EdgeInsets.only(top: 45, left: 28, right: 26),
        child: ListView(
          children: [
            const Image(
              height: 66.8,
              width: 66.99,
              image: AssetImage("assets/icons/logoS.png"),
            ),
            const SizedBox(
              height: 33.01,
            ),
            const Text(
              textAlign: TextAlign.center,
              "Login",
              style: TextStyle(
                fontSize: 40,
                color: Color.fromRGBO(8, 78, 140, 1),
                fontWeight: FontWeight.w700,
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            const Text(
              textAlign: TextAlign.center,
              "Sign in now to acces your excercises and saved music.",
              style: TextStyle(
                fontFamily: "AlegreyaSans",
                fontSize: 20,
                fontWeight: FontWeight.w500,
                color: Color.fromRGBO(8, 78, 140, 1),
              ),
            ),
            const SizedBox(
              height: 64,
            ),
            const SizedBox(
              height: 78,
              width: 321,
              child: TextField(
                decoration: InputDecoration(
                  labelText: "Email",
                  labelStyle: TextStyle(
                      fontSize: 12, color: Color.fromRGBO(49, 122, 191, 1)),
                  enabledBorder: OutlineInputBorder(
                    borderSide:
                        BorderSide(color: Color.fromRGBO(49, 122, 191, 1)),
                    borderRadius: BorderRadius.all(Radius.circular(13)),
                  ),
                  border: OutlineInputBorder(
                    borderSide:
                        BorderSide(color: Color.fromRGBO(49, 122, 191, 1)),
                    borderRadius: BorderRadius.all(Radius.circular(13)),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            TextButton(
              onPressed: () {
                Get.to(() => const LoginScreenPassword());
              },
              child: const Text(
                "Next  >",
                style: TextStyle(fontSize: 14, color: Colors.black),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(60))),
              height: 60,
              width: 261,
              child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: const MaterialStatePropertyAll(
                    Color.fromRGBO(222, 228, 237, 1),
                  ),
                  shape: MaterialStateProperty.all(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(13.0),
                    ),
                  ),
                ),
                onPressed: null,
                child: const Text(
                  "Login",
                  style: TextStyle(
                    fontFamily: "AlegreyaSans",
                    fontWeight: FontWeight.w500,
                    fontSize: 25,
                    color: Color.fromRGBO(1210, 210, 210, 1),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 156,
            ),
            const Text(
              textAlign: TextAlign.center,
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
                onPressed: () {},
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
          ],
        ),
      ),
    );
  }
}
