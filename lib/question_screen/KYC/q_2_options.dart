import 'package:flutter/material.dart';
import 'package:sampann_app/items/question_items.dart';

import 'kyc_screen.dart';

//  class name mean: {Q1 --> KYC1,  Q2--> KYC2} #like that----
class KYC2Option extends StatefulWidget {
  const KYC2Option(int optionIndexKYC, {super.key});

  @override
  State<KYC2Option> createState() => _KYC2OptionState();
}

class _KYC2OptionState extends State<KYC2Option> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        //---------------- Options for Q2-------------------

        //----Options1
        const SizedBox(
          height: 20,
        ),
        GestureDetector(
          onTap: () {
            setState(() {
              currValue = kycOptions[optionIndexKYC];
            });
          },
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 17),
            margin: const EdgeInsets.symmetric(horizontal: 27),
            decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(
                  Radius.circular(15),
                ),
                color: Color.fromRGBO(162, 244, 255, 1)),
            height: 73,
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
                Expanded(
                  child: Text(
                    kycOptions[optionIndexKYC],
                    style: const TextStyle(
                      fontFamily: "AlegreyaSans",
                      fontWeight: FontWeight.w500,
                      fontSize: 20,
                      color: Color.fromRGBO(7, 51, 52, 1),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),

        // ------option2-------
        const SizedBox(
          height: 20,
        ),
        GestureDetector(
          onTap: () {
            setState(() {
              currValue = kycOptions[optionIndexKYC + 1];
            });
          },
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 17),
            margin: const EdgeInsets.symmetric(horizontal: 27),
            decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(
                  Radius.circular(15),
                ),
                color: Color.fromRGBO(191, 247, 255, 1)),
            height: 73,
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
                Expanded(
                  child: Text(
                    kycOptions[optionIndexKYC + 1],
                    style: const TextStyle(
                        fontFamily: "AlegreyaSans",
                        fontWeight: FontWeight.w500,
                        fontSize: 20,
                        color: Colors.black),
                  ),
                ),
              ],
            ),
          ),
        ),

        // ------option3-------
        const SizedBox(
          height: 20,
        ),
        GestureDetector(
          onTap: () {
            setState(() {
              currValue = kycOptions[optionIndexKYC + 2];
            });
          },
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 17),
            margin: const EdgeInsets.symmetric(horizontal: 27),
            decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(
                  Radius.circular(15),
                ),
                color: Color.fromRGBO(213, 250, 255, 1)),
            height: 73,
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
                Expanded(
                  child: Text(
                    kycOptions[optionIndexKYC + 2],
                    style: const TextStyle(
                        fontFamily: "AlegreyaSans",
                        fontWeight: FontWeight.w500,
                        fontSize: 20,
                        color: Colors.black),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
