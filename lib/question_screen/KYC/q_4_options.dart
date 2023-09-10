import 'package:flutter/material.dart';
import 'package:sampann_app/items/question_items.dart';
import 'package:sampann_app/question_screen/KYC/kyc_screen.dart';

//  class name mean: {Q1 --> KYC1,  Q2--> KYC2} #like that----
class KYC4Option extends StatefulWidget {
  const KYC4Option(int optionIndexKYC, {super.key});

  @override
  State<KYC4Option> createState() => _KYC4OptionState();
}

bool isDrop = false;

class _KYC4OptionState extends State<KYC4Option> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          const Row(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 36, bottom: 6),
                child: Text(
                  "Select your reason",
                  style: TextStyle(
                    fontFamily: "AlegreyaSans",
                    fontWeight: FontWeight.w500,
                    fontSize: 20,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
          GestureDetector(
            onTap: () {
              setState(() {
                isDrop = !isDrop;
              });
            },
            child: Container(
              decoration: BoxDecoration(
                borderRadius: !isDrop
                    ? const BorderRadius.all(Radius.circular(15))
                    : const BorderRadius.only(
                        topLeft: Radius.circular(15),
                        topRight: Radius.circular(15),
                      ),
                color: Colors.white,
              ),
              height: 73,
              width: 321,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 17.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      currValue,
                      style: const TextStyle(
                        fontFamily: "AlegreyaSans",
                        fontWeight: FontWeight.w500,
                        fontSize: 20,
                        color: Colors.black,
                      ),
                    ),
                    Icon(
                      !isDrop
                          ? Icons.keyboard_arrow_down_outlined
                          : Icons.keyboard_arrow_up_outlined,
                      size: 32,
                    )
                  ],
                ),
              ),
            ),
          ),

          // ------Drop Down-------
          if (isDrop)
            Container(
              padding: const EdgeInsets.only(left: 17),
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(15),
                  bottomRight: Radius.circular(15),
                ),
                color: Colors.white,
              ),
              height: 322,
              width: 321,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 10,
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        currValue = kycOptions[optionIndexKYC];
                        isDrop = false;
                      });
                    },
                    child: Text(
                      kycOptions[optionIndexKYC],
                      style: const TextStyle(
                        fontFamily: "AlegreyaSans",
                        fontWeight: FontWeight.w500,
                        fontSize: 20,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        currValue = kycOptions[optionIndexKYC + 1];
                        isDrop = false;
                      });
                    },
                    child: Text(
                      kycOptions[optionIndexKYC + 1],
                      style: const TextStyle(
                        fontFamily: "AlegreyaSans",
                        fontWeight: FontWeight.w500,
                        fontSize: 20,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        currValue = kycOptions[optionIndexKYC + 2];
                        isDrop = false;
                      });
                    },
                    child: Text(
                      kycOptions[optionIndexKYC + 2],
                      style: const TextStyle(
                        fontFamily: "AlegreyaSans",
                        fontWeight: FontWeight.w500,
                        fontSize: 20,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        currValue = kycOptions[optionIndexKYC + 3];
                        isDrop = false;
                      });
                    },
                    child: Text(
                      kycOptions[optionIndexKYC + 3],
                      style: const TextStyle(
                        fontFamily: "AlegreyaSans",
                        fontWeight: FontWeight.w500,
                        fontSize: 20,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        currValue = kycOptions[optionIndexKYC + 4];
                        isDrop = false;
                      });
                    },
                    child: Text(
                      kycOptions[optionIndexKYC + 4],
                      style: const TextStyle(
                        fontFamily: "AlegreyaSans",
                        fontWeight: FontWeight.w500,
                        fontSize: 20,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        currValue = kycOptions[optionIndexKYC + 5];
                        isDrop = false;
                      });
                    },
                    child: Text(
                      kycOptions[optionIndexKYC + 5],
                      style: const TextStyle(
                        fontFamily: "AlegreyaSans",
                        fontWeight: FontWeight.w500,
                        fontSize: 20,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          const SizedBox(
            height: 30,
          ),
          if (!isDrop)
            Container(
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(15)),
                color: Colors.white,
              ),
              height: 222,
              width: 321,
              child: TextField(
                controller: healthMsg,
                style: const TextStyle(
                  fontFamily: "AlegreyaSans",
                  fontWeight: FontWeight.w500,
                  fontSize: 20,
                  color: Colors.black,
                ),
                maxLines: 10,
                maxLength: 500,
                decoration: const InputDecoration(
                  counterText: "",
                  contentPadding: EdgeInsets.all(10),
                  border: InputBorder.none,
                  hintText: "Type here more about your health challenge...",
                  hintStyle: TextStyle(
                    fontFamily: "AlegreyaSans",
                    fontWeight: FontWeight.w500,
                    fontSize: 20,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }
}
