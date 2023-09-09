import 'package:flutter/material.dart';

import '../question_screen/KYC/kyc_screen.dart';


class KYCBtn extends StatefulWidget {
  const KYCBtn({super.key});

  @override
  State<KYCBtn> createState() => _KYCBtnState();
}

class _KYCBtnState extends State<KYCBtn> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 56),
      child: Column(
        children: [
          const SizedBox(
            height: 33,
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 57),
            decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(60))),
            height: 60,
            width: 261,
            child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: const MaterialStatePropertyAll(Colors.white),
                  shape: MaterialStateProperty.all(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(13.0),
                    ),
                  ),
                ),
                onPressed: () {
                  setState(() {});
                  print(quesIndexKYC);
                },
                child: const Text(
                  "Submit",
                  style: TextStyle(
                    fontFamily: "AlegreyaSans",
                    fontWeight: FontWeight.w500,
                    fontSize: 25,
                    color: Color.fromRGBO(8, 78, 140, 1),
                  ),
                )),
          ),
        ],
      ),
    );
  }
}
