import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:http/http.dart' as http;
import 'package:sampann_app/question_screen/Quiz/quiz.dart';
import 'package:sampann_app/screen/chatbot/chatbot_screen.dart';
import 'package:sampann_app/screen/chatbot/chatbot_work.dart';
import 'package:sampann_app/screen/splash_screen.dart';

late Map mapResponse; //After quiz we are getting the map Response

// ---------Sign in with Google------\

Future<UserCredential> signInWithGoogle() async {
  // Trigger the authentication flow
  final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();

  // Obtain the auth details from the request
  final GoogleSignInAuthentication? googleAuth =
      await googleUser?.authentication;

  // Create a new credential
  final credential = GoogleAuthProvider.credential(
    accessToken: googleAuth?.accessToken,
    idToken: googleAuth?.idToken,
  );

  await Firebase.initializeApp();
  return await FirebaseAuth.instance.signInWithCredential(credential);
}

// -----------Google Signout function-----------

signOutGoogle() async {
  debugPrint("confirm sout");
  await Firebase.initializeApp();
  await FirebaseAuth.instance.signOut();
  await GoogleSignIn()
      .signOut()
      .then((value) => debugPrint("signout sucess-----"));
}

// -------------Signup Data---------------

sendSignUpData(
    String username, String email, String phonenumber, bool isverified) async {
  try {
    await http.post(
      Uri.parse("https://sampann-od59.onrender.com/android_login"),
      body: jsonEncode(
        {
          "username": username,
          "email": email,
          "phoneNumber": phonenumber,
          "isEmailVerified": isverified,
        },
      ),
      headers: {"content-Type": "application/json"},
    ).then(
      (value) => {
        debugPrint(value.statusCode.toString()),
        Get.to(
          () => const QuizScreen(),
        )
      },
    );
  } catch (e) {
    debugPrint("Problem: $e");
  }
}

// ------------------Quix data to send----------------

sendQuizData(Map quizData) async {
  try {
    await http.post(
      Uri.parse("https://sampann-od59.onrender.com/setContext"),
      body: jsonEncode({"QandA": quizData}),
      headers: {"content-Type": "application/json"},
    ).then(
      (value) => {
        debugPrint(value.statusCode.toString()),
        debugPrint("Data Sent"),
        mapResponse = jsonDecode(value.body),
        token = mapResponse["access_token"],
        // print("body: ${mapResponse["access_token"]}"),
        Get.to(
          () => const ChatBot(),
        )
      },
    );
  } catch (e) {
    debugPrint("Problem: $e");
  }
}

// --------Bot Response-----------------

getBotResponse({required String msg}) async {
  print("message : $msg");
  try {
    await http.post(
      Uri.parse("https://sampann-od59.onrender.com/getBotResponse"),
      body: jsonEncode({"user_message": msg}),
      headers: {
        "content-Type": "application/json",
        "Authorization": "Bearer $token"
      },
    ).then(
      (value) async => {
        debugPrint(value.statusCode.toString()),
        debugPrint("Data Sent"),
        if (value.statusCode.toString() == "200")
          {
            mapResponse = await jsonDecode(value.body),
            msg = mapResponse["response"].toString(),
            await addBotMessage(msg: msg),
            print(jsonEncode(value.body)),
          }
        // Get.to(
        //   () => const HomePage(),
        // )

        // signInWithGoogle(),
      },
    );
  } catch (e) {
    debugPrint("Problem: $e");
    // Get.to(
    //   () => const HomePage(),
    // )
  }
}
