import 'package:fitness_app/utils/color.dart';
import 'package:fitness_app/app/view/onboarding/onboarding.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../utils/text_constanst.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ShaderMask(
                  shaderCallback: (bounds) => const LinearGradient(
                    colors: [
                      FitnessAppColors.logoColor,
                      FitnessAppColors.logoColor2,
                    ],
                  ).createShader(bounds),
                  child: const Text(
                    TextConstants.appTitle,
                    style: FontConstants.headline1,
                  ),
                ),
                const Text(
                  TextConstants.appTitle2,
                  style: FontConstants.headline2,
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 80.0, // Adjust the position as needed
            left: 30.0,
            right: 30.0,
            // ignore: sized_box_for_whitespace
            child: Container(
              width: 315,
              height: 60,
              child: ElevatedButton(
                onPressed: () {
                  Get.to(OnBoardingScreen());
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor:
                      FitnessAppColors.logoColor, // Button background color
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0), // Rounded border
                  ),
                ),
                child: const Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Text(
                    'Get Started',
                    style: TextStyle(
                      fontSize: 18.0,
                      color: Colors.white, // Button text color
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
