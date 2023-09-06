import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:http/http.dart' as http;
import 'package:sampann_app/screen/home_screen.dart';

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

signOutGoogle() async {
  await Firebase.initializeApp();
  await FirebaseAuth.instance.signOut();
  await GoogleSignIn()
      .signOut()
      .then((value) => debugPrint("signout sucess-----"));
}

sendData(
    String username, String email, int phonenumber, bool isverified) async {
  try {
    final response = await http.post(
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
      // ).then(
      //   (value) => Get.off(
      //     () => const HomePage(),
      //   ),
    );
    debugPrint("Response is: ${response.statusCode}");
  } catch (e) {
    debugPrint("Problem: $e");
  }
}
