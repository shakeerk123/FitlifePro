import 'package:fitness_app/app/view/home/homepage.dart';
import 'package:fitness_app/utils/path_constants.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../utils/color.dart';
import '../../../utils/text_constanst.dart';


class SuccessRegistrationScreen extends StatelessWidget {
  const SuccessRegistrationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Image.asset(AppPaths.successRegisterImage),
           const SizedBox(height: 40,),
          const Text(
            "Wecome, Stefani",
            style: FontConstants.name,
          ),
          const Text(
            "You are all set now, let’s reach your",
            style: FontConstants.smallthin,
          ),
          const Text(
            "goals together with us",
            style: FontConstants.smallthin,
          ),
           const SizedBox(height: 160,),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(70),
            ),
            width: double.infinity,
            height: 60,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: FitnessAppColors
                    .logoColor, // Background color of the button
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(70), // Rounded border
                ),
              ),
              onPressed: () {
                Get.to(const HomeScreen());
              },
              child: const Text(
                "Go to Home",
                style: FontConstants.smallthinBold,
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
