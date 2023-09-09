import 'package:flutter/material.dart';
import 'package:sampann_app/items/question_items.dart';

import 'kyc_screen.dart';

//  class name mean: {Q1 --> KYC1,  Q2--> KYC2} #like that----
class KYC3Option extends StatefulWidget {
  const KYC3Option(int optionIndexKYC, {super.key});

  @override
  State<KYC3Option> createState() => _KYC3OptionState();
}

class _KYC3OptionState extends State<KYC3Option> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        //---------------- Options for Q3-------------------

        // ---Options  1 & 2----
        const SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: () {
                setState(() {
                  currValue = kycOptions[optionIndexKYC];
                });
              },
              child: Container(
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(
                      Radius.circular(15),
                    ),
                    color: Color.fromRGBO(162, 244, 255, 1)),
                height: 73,
                width: 152,
                child: Row(
                  children: [
                    Radio(
                      value: kycOptions[optionIndexKYC],
                      groupValue: currValue,
                      activeColor: Colors.black,
                      onChanged: ((value) {
                        setState(() {
                          currValue = value.toString();
                        });
                      }),
                    ),
                    Text(
                      kycOptions[optionIndexKYC],
                      style: const TextStyle(
                        fontFamily: "AlegreyaSans",
                        fontWeight: FontWeight.w500,
                        fontSize: 20,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              width: 5,
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  currValue = kycOptions[optionIndexKYC + 1];
                });
              },
              child: Container(
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(
                      Radius.circular(15),
                    ),
                    color: Color.fromRGBO(162, 244, 255, 1)),
                height: 73,
                width: 152,
                child: Row(
                  children: [
                    Radio(
                      value: kycOptions[optionIndexKYC + 1],
                      groupValue: currValue,
                      activeColor: Colors.black,
                      onChanged: ((value) {
                        setState(() {
                          currValue = value.toString();
                        });
                      }),
                    ),
                    Text(
                      kycOptions[optionIndexKYC + 1],
                      style: const TextStyle(
                        fontFamily: "AlegreyaSans",
                        fontWeight: FontWeight.w500,
                        fontSize: 20,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),

        // ------Options  3 & 4 ----
        const SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: () {
                setState(() {
                  currValue = kycOptions[optionIndexKYC + 2];
                });
              },
              child: Container(
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(
                      Radius.circular(15),
                    ),
                    color: Color.fromRGBO(191, 247, 255, 1)),
                height: 73,
                width: 152,
                child: Row(
                  children: [
                    Radio(
                      value: kycOptions[optionIndexKYC + 2],
                      groupValue: currValue,
                      activeColor: Colors.black,
                      onChanged: ((value) {
                        setState(() {
                          currValue = value.toString();
                        });
                      }),
                    ),
                    Text(
                      kycOptions[optionIndexKYC + 2],
                      style: const TextStyle(
                        fontFamily: "AlegreyaSans",
                        fontWeight: FontWeight.w500,
                        fontSize: 20,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              width: 5,
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  currValue = kycOptions[optionIndexKYC + 3];
                });
              },
              child: Container(
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(
                      Radius.circular(15),
                    ),
                    color: Color.fromRGBO(191, 247, 255, 1)),
                height: 73,
                width: 152,
                child: Row(
                  children: [
                    Radio(
                      value: kycOptions[optionIndexKYC + 3],
                      groupValue: currValue,
                      activeColor: Colors.black,
                      onChanged: ((value) {
                        setState(() {
                          currValue = value.toString();
                        });
                      }),
                    ),
                    Text(
                      kycOptions[optionIndexKYC + 3],
                      style: const TextStyle(
                        fontFamily: "AlegreyaSans",
                        fontWeight: FontWeight.w500,
                        fontSize: 20,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),

        // ------Options  5 & 6----
        const SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: () {
                setState(() {
                  currValue = kycOptions[optionIndexKYC + 4];
                });
              },
              child: Container(
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(
                      Radius.circular(15),
                    ),
                    color: Color.fromRGBO(213, 250, 255, 1)),
                height: 73,
                width: 152,
                child: Row(
                  children: [
                    Radio(
                      value: kycOptions[optionIndexKYC + 4],
                      groupValue: currValue,
                      activeColor: Colors.black,
                      onChanged: ((value) {
                        setState(() {
                          currValue = value.toString();
                        });
                      }),
                    ),
                    Text(
                      kycOptions[optionIndexKYC + 4],
                      style: const TextStyle(
                        fontFamily: "AlegreyaSans",
                        fontWeight: FontWeight.w500,
                        fontSize: 20,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              width: 5,
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  currValue = kycOptions[optionIndexKYC + 5];
                });
              },
              child: Container(
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(
                      Radius.circular(15),
                    ),
                    color: Color.fromRGBO(213, 250, 255, 1)),
                height: 73,
                width: 152,
                child: Row(
                  children: [
                    Radio(
                      value: kycOptions[optionIndexKYC + 5],
                      groupValue: currValue,
                      activeColor: Colors.black,
                      onChanged: ((value) {
                        setState(() {
                          currValue = value.toString();
                        });
                      }),
                    ),
                    Text(
                      kycOptions[optionIndexKYC + 5],
                      style: const TextStyle(
                        fontFamily: "AlegreyaSans",
                        fontWeight: FontWeight.w500,
                        fontSize: 20,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
        //----Options1
      ],
    );
  }
}
