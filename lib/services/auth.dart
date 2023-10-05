import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:http/http.dart' as http;
import 'package:sampann_app/screen/dashboard/home_with_sidebar.dart';
import 'package:sampann_app/screen/question_screen/KYC/kyc_screen.dart';
import 'package:sampann_app/screen/chatbot/chatbot_work.dart';
import 'package:sampann_app/screen/authentication/landing_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

late Map mapResponse; //After quiz we are getting the map Response
String token = '';
bool newUser = false;
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
      headers: {
        "content-Type": "application/json",
        "Authorization": "Bearer $token"
      },
    ).then(
      (value) => {
        debugPrint(value.statusCode.toString()),
        if (value.statusCode == 200)
          {
            mapResponse = jsonDecode(value.body),
            token = mapResponse["new_access_token"],
            newUser = mapResponse["isNewUser"] == 1 ? true : false,
            saveToken(token),
            Get.to(() => const KYCScreen()),
          },
      },
    );
  } catch (e) {
    debugPrint("Problem: $e");
  }
}

// ------------------Quiz data to send----------------

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

        // Getting Token
        mapResponse = jsonDecode(value.body),
        token = mapResponse["access_token"],

        // print("body: ${mapResponse["access_token"]}"),
        saveToken(token),
      },
    );
  } catch (e) {
    debugPrint("Problem: $e");
  }
  return mapResponse;
}

// --------Bot Response-----------------

getBotResponse({required String msg}) async {
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
          }
        else
          {
            if (FirebaseAuth.instance.currentUser != null)
              {
                Get.offAll(() => const HomeWithSideBar()),
              }
            else
              {
                Get.offAll(() => const LandingScreen()),
              }
          }
      },
    );
  } catch (e) {
    debugPrint("Problem: $e");
    Get.offAll(
      () => const LandingScreen(),
    );
  }
}

// ----------Save Token----------
Future<void> saveToken(String token) async {
  final SharedPreferences prefs = await SharedPreferences.getInstance();
  await prefs.setString("token", token);
}

// ----------Remove token-------
removeToken() async {
  final SharedPreferences prefs = await SharedPreferences.getInstance();
  // Remove data for the 'counter' key.
  await prefs.remove('token');
}

// ----------Remove token-------
bool isNewUser() {
  return newUser;
}
