import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sampann_app/screen/dashboard/bottom_navigation.dart';
import 'package:sampann_app/services/tools.dart';

class AvocadoToast extends StatelessWidget {
  const AvocadoToast({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const MyBottomNavBar(),
      body: SafeArea(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              backNavigation(),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  children: [
                    const Center(
                      child: Image(
                        image: AssetImage("assets/images/toast.png"),
                      ),
                    ),
                    const SizedBox(
                      height: 26,
                    ),
                    const Text(
                      "Avocado Toast",
                      style: TextStyle(
                        fontFamily: "AlegreyaSans",
                        fontSize: 20,
                        color: Color.fromRGBO(8, 78, 140, 1),
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Text(
                      "Avocados also contain a ton of digestive-benefitting fiber.",
                      style: TextStyle(
                        fontFamily: "AlegreyaSans",
                        fontSize: 18,
                        color: Color.fromRGBO(0, 0, 0, 1),
                        fontWeight: FontWeight.w500,
                      ),
                    ),

                    const SizedBox(
                      height: 40,
                    ),
                    // ------Calories Rows--------
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        myDiet(
                            title: "58", subtitle: "Cal", caption: "Calories"),
                        myDiet(title: "20", subtitle: "Gms", caption: "Fat"),
                        myDiet(
                            title: "20", subtitle: "Cal", caption: "Protein"),
                        myDiet(
                            title: "100", subtitle: "Gms", caption: "Energy"),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    // --------- ingredients -------
                    Card(
                      shape: ContinuousRectangleBorder(
                        side: const BorderSide(
                            color: Color.fromRGBO(205, 232, 201, 1)),
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Column(
                          children: [
                            const Text(
                              "Ingredients",
                              style: TextStyle(
                                fontFamily: "AlegreyaSans",
                                fontSize: 20,
                                color: Color.fromRGBO(0, 0, 0, 1),
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            const SizedBox(
                              height: 7,
                            ),
                            const Divider(
                              color: Color.fromRGBO(205, 232, 201, 1),
                              thickness: 1,
                            ),
                            ingredients(name: "Fresh Ginger", amount: "1.2pc"),
                            const SizedBox(
                              height: 7,
                            ),
                            const Divider(
                              color: Color.fromRGBO(205, 232, 201, 1),
                              thickness: 1,
                            ),
                            ingredients(name: "Avocado", amount: "1pc"),
                            const SizedBox(
                              height: 7,
                            ),
                            const Divider(
                              color: Color.fromRGBO(205, 232, 201, 1),
                              thickness: 1,
                            ),
                            ingredients(name: "Bread", amount: "2pc"),
                            const SizedBox(
                              height: 7,
                            ),
                            const Divider(
                              color: Color.fromRGBO(205, 232, 201, 1),
                              thickness: 1,
                            ),
                            ingredients(
                                name: "Unsalted Butter", amount: "1tbsp"),
                            const SizedBox(
                              height: 7,
                            ),
                            const Divider(
                              color: Color.fromRGBO(205, 232, 201, 1),
                              thickness: 1,
                            ),
                            ingredients(name: "Salt", amount: "to taste"),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 21,
                    ),
                    const Text(
                      '''Description:
        
        1. Toast your slice of bread until golden and firm.
        2. Remove the pit from your avocado. 
        3. Use a big spoon to scoop out the flesh. ...
        4. Spread avocado on top of your toast. 
        5. Enjoy as-is or top with any extras offered in this post (I highly recommend a light sprinkle of flaky sea salt, if you have it).''',
                      style: TextStyle(
                        fontFamily: "AlegreyaSans",
                        fontSize: 18,
                        color: Color.fromRGBO(0, 0, 0, 1),
                        fontWeight: FontWeight.w500,
                      ),
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

  // -------Function widget for calories----
  Widget myDiet({
    required String title,
    required String subtitle,
    required String caption,
  }) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        CircleAvatar(
          radius: 28,
          backgroundColor: const Color.fromRGBO(171, 239, 213, 1),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(title,
                  style: GoogleFonts.epilogue(
                    textStyle: const TextStyle(
                      fontSize: 20,
                      color: Color.fromRGBO(0, 0, 0, 1),
                      fontWeight: FontWeight.w500,
                    ),
                  )),
              Text(
                subtitle,
                style: const TextStyle(
                  fontFamily: "AlegreyaSans",
                  fontSize: 12,
                  color: Color.fromRGBO(0, 0, 0, 1),
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
        ),
        Text(
          caption,
          style: const TextStyle(
            fontFamily: "AlegreyaSans",
            fontSize: 12,
            color: Color.fromRGBO(0, 0, 0, 1),
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }

//  --------------Widget Function Ingredients name------------
  Widget ingredients({
    required name,
    required amount,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          name,
          style: const TextStyle(
            fontFamily: "AlegreyaSans",
            fontSize: 15,
            color: Color.fromRGBO(0, 0, 0, 1),
            fontWeight: FontWeight.w500,
          ),
        ),
        Text(
          amount,
          style: const TextStyle(
            fontFamily: "AlegreyaSans",
            fontSize: 15,
            color: Color.fromRGBO(0, 0, 0, 1),
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }
}
